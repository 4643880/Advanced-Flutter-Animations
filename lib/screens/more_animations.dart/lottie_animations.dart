import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimationExample extends StatefulWidget {
  const LottieAnimationExample({super.key});

  @override
  State<LottieAnimationExample> createState() => _LottieAnimationExampleState();
}

class _LottieAnimationExampleState extends State<LottieAnimationExample> {
  final List<String> _animationPaths = [
    'assets/lottie/tigger.json',
    'assets/lottie/bird.json',
    'assets/lottie/car.json'
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
          "Lottie Animations",
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
