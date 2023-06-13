import 'package:advanced_animation_course/screens/basic_animations_concepts/basic_screens/flutter_transform.dart';
import 'package:advanced_animation_course/screens/basic_animations_concepts/basic_screens/image_animation.dart';
import 'package:advanced_animation_course/screens/basic_animations_concepts/basic_screens/implicit_animations.dart';
import 'package:advanced_animation_course/screens/basic_animations_concepts/basic_screens/tween_animation.dart';
import 'package:advanced_animation_course/screens/basic_animations_concepts/basic_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'flutter_curves.dart';
import 'flutter_matrix_four.dart';

class BasicHomeScreen extends StatefulWidget {
  const BasicHomeScreen({Key? key}) : super(key: key);

  @override
  _BasicHomeScreenState createState() => _BasicHomeScreenState();
}

class _BasicHomeScreenState extends State<BasicHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Advanced Flutter Animations',
            style: TextStyle(color: Colors.black)),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const CustomText(
              '👉',
              size: 30,
            ),
            title: const CustomText(
              'Image Animation',
              size: 18,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ImageAnimation()));
            },
          ),
          ListTile(
            leading: const CustomText(
              '👉',
              size: 30,
            ),
            title: const CustomText(
              'Implicit Animated',
              size: 18,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const ImplicitAnimationsExample()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(
              '👉',
              size: 30,
            ),
            title: const CustomText(
              'Flutter transform',
              size: 18,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const FlutterTransformExample()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(
              '👉',
              size: 30,
            ),
            title: const CustomText(
              'Flutter Matrix4',
              size: 18,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const FlutterMatrixFourExample()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(
              '👉',
              size: 30,
            ),
            title: const CustomText(
              'Flutter Animation curves',
              size: 18,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const FlutterCurvesExample()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(
              '👉',
              size: 30,
            ),
            title: const CustomText(
              'Flutter Tween Animations',
              size: 18,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const TweenAnimationExample()));
            },
          ),
        ],
      ),
    );
  }
}
