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

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
