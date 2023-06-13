import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedBuilderAndTransformPage extends StatefulWidget {
  const AnimatedBuilderAndTransformPage({super.key});

  @override
  State<AnimatedBuilderAndTransformPage> createState() =>
      _AnimatedBuilderAndTransformPageState();
}

class _AnimatedBuilderAndTransformPageState
    extends State<AnimatedBuilderAndTransformPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animation = Tween<double>(begin: 0, end: pi * 2).animate(_controller);
    _controller.repeat();
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
          "Animated Builder And Transform",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) => Transform(
            alignment: FractionalOffset.center,
            transform: Matrix4.identity()..rotateY(_animation.value),
            child: Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
