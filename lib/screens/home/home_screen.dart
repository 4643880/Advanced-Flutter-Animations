import 'package:advanced_animation_course/components/button_widget.dart';
import 'package:advanced_animation_course/screens/explicit_animations/animated_builder/animated_builder.dart';
import 'package:advanced_animation_course/screens/explicit_animations/positioned_transition/positioned_transition.dart';
import 'package:advanced_animation_course/screens/explicit_animations/rotation_transition/rotation_transition.dart';
import 'package:advanced_animation_course/screens/explicit_animations/size_transition/size_transition.dart';
import 'package:advanced_animation_course/screens/implicit_animations/animated_align/animated_align_page.dart';
import 'package:advanced_animation_course/screens/implicit_animations/animated_container/animated_container.dart';
import 'package:advanced_animation_course/screens/implicit_animations/animated_cross_fade/animated_cross_fade.dart';
import 'package:advanced_animation_course/screens/implicit_animations/animated_default_text_style/animated_default_text_style.dart';
import 'package:advanced_animation_course/screens/implicit_animations/animated_list/animated_list.dart';
import 'package:advanced_animation_course/screens/implicit_animations/animated_opacity/animated_opacity.dart';
import 'package:advanced_animation_course/screens/implicit_animations/animated_padding/animated_padding.dart';
import 'package:advanced_animation_course/screens/implicit_animations/animated_physical_model/animated_physical_model.dart';
import 'package:advanced_animation_course/screens/implicit_animations/animated_positioned/animated_positioned.dart';
import 'package:advanced_animation_course/screens/implicit_animations/animated_positioned_directional.dart/animated_positioned_directional.dart';
import 'package:advanced_animation_course/screens/implicit_animations/animated_switcher/animated_switcher.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Advanced Flutter Animations"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            children: [
              const Divider(color: Colors.purple, thickness: 3),
              const Center(
                  child: Text(
                "Implicit Animations Starts Here",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              )),
              const Divider(color: Colors.purple, thickness: 3),
              ButtonWidget(
                buttonName: "Animated Align",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AnimatedAlignPage(),
                  ));
                },
              ),
              ButtonWidget(
                buttonName: "Animated Container",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AnimatedContainerPage(),
                  ));
                },
              ),
              ButtonWidget(
                buttonName: "Animated Default Text Style",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AnimatedDefaultTextStylePage(),
                  ));
                },
              ),
              ButtonWidget(
                buttonName: "Animated Opacity",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AnimatedOpacityPage(),
                  ));
                },
              ),
              ButtonWidget(
                buttonName: "Animated Padding",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AnimatedPaddingpage(),
                  ));
                },
              ),
              ButtonWidget(
                buttonName: "Animated Physical Model",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AnimatedPhysicalModelPage(),
                  ));
                },
              ),
              ButtonWidget(
                buttonName: "Animated Positioned",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AnimatedPositionedPage(),
                  ));
                },
              ),
              ButtonWidget(
                buttonName: "Animated Positioned Directional",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        const AnimatedPositionedDirectionalPage(),
                  ));
                },
              ),
              ButtonWidget(
                buttonName: "Animated Cross Fade",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AnimatedCrossFadePage(),
                  ));
                },
              ),
              ButtonWidget(
                buttonName: "Animated Switcher",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AnimatedSwitcherPage(),
                  ));
                },
              ),
              ButtonWidget(
                buttonName: "Animated List",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AnimatedListPage(),
                  ));
                },
              ),
              const Divider(color: Colors.purple, thickness: 3),
              const Center(
                  child: Text(
                "Explicit Animations Starts Here",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              )),
              const Divider(color: Colors.purple, thickness: 3),
              ButtonWidget(
                buttonName: "Positioned Transition",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PositionedTransitionPage(),
                  ));
                },
              ),
              ButtonWidget(
                buttonName: "Size Transition",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SizeTransitionPage(),
                  ));
                },
              ),
              ButtonWidget(
                buttonName: "Rotation Transition",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const RotationTransitionPage(),
                  ));
                },
              ),
              ButtonWidget(
                buttonName: "Animated Builder",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AnimatedBuilderPage(),
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
