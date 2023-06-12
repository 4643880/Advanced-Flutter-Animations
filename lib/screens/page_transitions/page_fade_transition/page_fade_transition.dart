import 'package:flutter/material.dart';

class PageFadeTransition extends PageRouteBuilder {
  final dynamic page;

  PageFadeTransition(this.page)
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var _animation = Tween<double>(begin: 0, end: 1).animate(
                CurvedAnimation(
                  parent: animation,
                  curve: Curves.easeIn,
                ),
              );
              return Align(
                alignment: Alignment.center,
                child: FadeTransition(
                  opacity: _animation,
                  child: child,
                ),
              );
            });
}
