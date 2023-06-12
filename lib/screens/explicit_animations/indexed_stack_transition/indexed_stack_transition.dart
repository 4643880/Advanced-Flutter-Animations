import 'package:flutter/material.dart';

class IndexedStackTransitionPage extends StatefulWidget {
  const IndexedStackTransitionPage({super.key});

  @override
  State<IndexedStackTransitionPage> createState() =>
      _IndexedStackTransitionPageState();
}

class _IndexedStackTransitionPageState extends State<IndexedStackTransitionPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _scaleAnimation = Tween<double>(begin: 0.3, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Indexed Stack Transition",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: IndexedStack(
          index: currentIndex,
          children: [
            ScaleTransition(
              scale: _scaleAnimation,
              child: FadeTransition(
                opacity: _opacityAnimation,
                child: Container(
                    alignment: Alignment.center,
                    color: Colors.green,
                    child: Image.asset("assets/images/jerry.png")),
              ),
            ),
            ScaleTransition(
              alignment: Alignment.center,
              scale: _scaleAnimation,
              child: FadeTransition(
                opacity: _opacityAnimation,
                child: Container(
                    alignment: Alignment.center,
                    color: Colors.amber,
                    child: Image.asset("assets/images/tom.png")),
              ),
            ),
            ScaleTransition(
              alignment: Alignment.center,
              scale: _scaleAnimation,
              child: FadeTransition(
                opacity: _opacityAnimation,
                child: Container(
                    alignment: Alignment.center,
                    color: Colors.purple,
                    child: Image.asset("assets/images/dog.png")),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.reset();
          _controller.forward();
          setState(() {
            if (currentIndex == 2) {
              currentIndex = 0;
            } else {
              currentIndex++;
            }
          });
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
