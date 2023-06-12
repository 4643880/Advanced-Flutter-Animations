import 'package:flutter/material.dart';

class SizeTransitionPage extends StatefulWidget {
  const SizeTransitionPage({super.key});

  @override
  State<SizeTransitionPage> createState() => _SizeTransitionPageState();
}

class _SizeTransitionPageState extends State<SizeTransitionPage>
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
    _animation = Tween<double>(begin: 0, end: 1).animate(
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
          "Size Transition",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            _controller.reset();
            _controller.forward();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 250,
                color: Colors.blue,
                child: Center(
                  child: SizeTransition(
                    sizeFactor: _animation,
                    child: Center(
                      child: Container(
                          color: Colors.orange,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(
                            16,
                          ),
                          height: 180,
                          width: 180,
                          child: Image.asset(
                            "assets/images/jerry.png",
                          )),
                    ),
                  ),
                ),
              ),
              const Center(
                  child: Text(
                "Please click on the container.",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
