import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RiveAnimationExample extends StatefulWidget {
  const RiveAnimationExample({super.key});

  @override
  State<RiveAnimationExample> createState() => _RiveAnimationExampleState();
}

class _RiveAnimationExampleState extends State<RiveAnimationExample> {
  final List<String> _animationPaths = [
    'assets/riv/bear.json',
    'assets/riv/girl.json',
    'assets/riv/rating.json'
  ];
  final PageController _pageController = PageController();
  int currentIndex = 0;

  void startAnimation() {
    Future.delayed(const Duration(seconds: 3)).then((value) => {
          if (currentIndex == _animationPaths.length - 1)
            {
              _pageController.animateToPage(
                0,
                duration: const Duration(milliseconds: 400),
                curve: Curves.linear,
              )
            }
          else
            {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.linear,
              ),
            },
          startAnimation()
        });
  }

  @override
  void initState() {
    startAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Rive Animations",
        ),
        centerTitle: true,
      ),
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        // reverse: false,
        itemCount: _animationPaths.length,
        itemBuilder: (context, index) {
          final eachItem = _animationPaths[index];
          return Center(
            child: Lottie.asset(eachItem),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int page) {
            _pageController.animateToPage(
              page,
              duration: const Duration(seconds: 1),
              curve: Curves.linear,
            );
          },
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.animation),
              label: "Animation 1",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.animation_rounded),
              label: "Animation 2",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.animation_sharp),
              label: "Animation 3",
            ),
          ]),
    );
  }
}
