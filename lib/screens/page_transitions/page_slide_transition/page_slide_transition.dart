import 'dart:math';

import 'package:flutter/material.dart';

class PageSlideTransitionScreen extends PageRouteBuilder {
  final dynamic page;
  PageSlideTransitionScreen(this.page)
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var _animation = Tween<Offset>(
                      begin: const Offset(1, 1), end: const Offset(0.0, 0))
                  .animate(CurvedAnimation(
                parent: animation,
                curve: Curves.linear,
              ));
              return SlideTransition(
                position: _animation,
                child: child,
              );
            });
}
