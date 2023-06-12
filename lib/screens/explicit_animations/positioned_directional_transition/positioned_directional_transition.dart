import 'package:flutter/material.dart';

class PositionedDirectionalTransitionpage extends StatefulWidget {
  const PositionedDirectionalTransitionpage({super.key});

  @override
  State<PositionedDirectionalTransitionpage> createState() =>
      _PositionedDirectionalTransitionpageState();
}

class _PositionedDirectionalTransitionpageState
    extends State<PositionedDirectionalTransitionpage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(150, 150, 0, 150),
    ).animate(_controller);
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
          "Positioned Directional Transition",
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          PositionedTransition(
            rect: _animation,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.blue,
            ),
          ),
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) => PositionedDirectional(
              top: _controller.value * 250,
              bottom: _controller.value * 250,
              start: _controller.value * 250,
              end: 0,
              child: Container(
                color: Colors.amber,
                width: 100,
                height: 100,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_controller.isCompleted) {
            _controller.reverse();
          } else {
            _controller.reset();
            _controller.forward();
          }
        },
        child: const Icon(Icons.animation),
      ),
    );
  }
}
