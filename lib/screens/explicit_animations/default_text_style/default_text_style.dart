import 'package:flutter/material.dart';

class DefaultTextStylePage extends StatefulWidget {
  const DefaultTextStylePage({super.key});

  @override
  State<DefaultTextStylePage> createState() => _DefaultTextStylePageState();
}

class _DefaultTextStylePageState extends State<DefaultTextStylePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<TextStyle> _animation;
  final TextStyle _style1 = const TextStyle(fontSize: 16, color: Colors.black);
  final TextStyle _style2 = const TextStyle(
      fontSize: 35, fontWeight: FontWeight.w600, color: Colors.purple);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _animation = TextStyleTween(
      begin: _style1,
      end: _style2,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceInOut,
      ),
    );
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
            "Default Text Style",
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DefaultTextStyleTransition(
                style: _animation,
                child: const Text(
                  "Hello, World!",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // isDefault = !isDefault;
                    if (_controller.status == AnimationStatus.completed) {
                      _controller.reverse();
                    } else {
                      _controller.reset();
                      _controller.forward();
                    }
                  });
                },
                child: const Text("Click Me"),
              ),
            ],
          ),
        ));
  }
}
