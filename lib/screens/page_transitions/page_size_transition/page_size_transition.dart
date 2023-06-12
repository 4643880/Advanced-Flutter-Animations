import 'dart:math';

import 'package:flutter/material.dart';

class PageSizeTransitionScreen extends PageRouteBuilder {
  final dynamic page;
  PageSizeTransitionScreen(this.page)
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var _animation =
                  Tween<double>(begin: 0.0, end: 1).animate(CurvedAnimation(
                parent: animation,
                curve: Curves.linear,
              ));
              return Align(
                alignment: Alignment.center,
                child: SizeTransition(
                  sizeFactor: _animation,
                  child: child,
                ),
              );
            });
}
