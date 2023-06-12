import 'package:flutter/material.dart';

class TweenAnimationBuilderPage extends StatefulWidget {
  const TweenAnimationBuilderPage({super.key});

  @override
  State<TweenAnimationBuilderPage> createState() =>
      _TweenAnimationBuilderPageState();
}

class _TweenAnimationBuilderPageState extends State<TweenAnimationBuilderPage> {
  // When we don't want to use animationController and animation object then we use it
  double _opacity = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tween Animation Builder",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              duration: const Duration(seconds: 2),
              tween: Tween<double>(begin: 0, end: _opacity),
              builder: (context, value, child) {
                return Opacity(
                  opacity: value,
                  child: child,
                );
              },
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _opacity = _opacity == 0.0 ? 1.0 : 0.0;
                  });
                },
                child: const Text("Click Me"))
          ],
        ),
      ),
    );
  }
}
