import 'package:flutter/material.dart';

class AnimatedSwitcherPage extends StatefulWidget {
  const AnimatedSwitcherPage({super.key});

  @override
  State<AnimatedSwitcherPage> createState() => _AnimatedSwitcherPageState();
}

class _AnimatedSwitcherPageState extends State<AnimatedSwitcherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animated Switcher",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("Login"),
        ),
      ),
    );
  }
}

class HomeDemo extends StatefulWidget {
  const HomeDemo({super.key});

  @override
  State<HomeDemo> createState() => _HomeDemoState();
}

class _HomeDemoState extends State<HomeDemo> {
  bool isFirstWidgetVisible = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isFirstWidgetVisible = !isFirstWidgetVisible;
              });
            },
            child: AnimatedCrossFade(
              firstCurve: Curves.linear,
              secondCurve: Curves.linear,
              firstChild: Container(
                height: 200,
                width: 200,
                color: Colors.orange,
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Image.asset("assets/images/jerry.png"),
                ),
              ),
              secondChild: Container(
                height: 200,
                width: 200,
                color: Colors.orange,
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Image.asset("assets/images/dog.png"),
                ),
              ),
              crossFadeState: isFirstWidgetVisible
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1),
            ),
          ),
          const Text("Click on the Picture"),
        ],
      ),
    );
  }
}
