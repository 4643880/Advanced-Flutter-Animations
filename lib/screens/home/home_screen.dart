import 'package:advanced_animation_course/components/button_widget.dart';
import 'package:advanced_animation_course/screens/explicit_animations/animated_builder/animated_builder.dart';
import 'package:advanced_animation_course/screens/explicit_animations/default_text_style/default_text_style.dart';
import 'package:advanced_animation_course/screens/explicit_animations/fade_transition/fade_transition.dart';
import 'package:advanced_animation_course/screens/explicit_animations/indexed_stack_transition/indexed_stack_transition.dart';
import 'package:advanced_animation_course/screens/explicit_animations/positioned_directional_transition/positioned_directional_transition.dart';
import 'package:advanced_animation_course/screens/explicit_animations/positioned_transition/positioned_transition.dart';
import 'package:advanced_animation_course/screens/explicit_animations/rotation_transition/rotation_transition.dart';
import 'package:advanced_animation_course/screens/explicit_animations/size_transition/size_transition.dart';
import 'package:advanced_animation_course/screens/explicit_animations/tween_animation_builder/tween_animation_builder.dart';
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
import 'package:advanced_animation_course/screens/more_animations.dart/custom_painter_example.dart';
import 'package:advanced_animation_course/screens/more_animations.dart/lottie_animations.dart';
import 'package:advanced_animation_course/screens/page_transitions/page_fade_transition/page_fade_transition.dart';
import 'package:advanced_animation_course/screens/page_transitions/page_fade_transition/page_two.dart';
import 'package:advanced_animation_course/screens/page_transitions/page_mix_fade_and_size_transition/page_mix_fade_and_size_transition.dart';
import 'package:advanced_animation_course/screens/page_transitions/page_mix_scale_and_rotate_transition/page_mix_scale_and_rotate_transition.dart';
import 'package:advanced_animation_course/screens/page_transitions/page_rotate_transition/page_rotate_transition.dart';
import 'package:advanced_animation_course/screens/page_transitions/page_scale_transition/page_scale_transition.dart';
import 'package:advanced_animation_course/screens/page_transitions/page_size_transition/page_size_transition.dart';
import 'package:advanced_animation_course/screens/page_transitions/page_slide_transition/page_slide_transition.dart';
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
              ButtonWidget(
                buttonName: "Fade Transition",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const FadeTransitionPage(),
                  ));
                },
              ),
              ButtonWidget(
                buttonName: "Positioned Directional Transition",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        const PositionedDirectionalTransitionpage(),
                  ));
                },
              ),
              ButtonWidget(
                buttonName: "Tween Animation Builder",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TweenAnimationBuilderPage(),
                  ));
                },
              ),
              ButtonWidget(
                buttonName: "Default Text Style",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DefaultTextStylePage(),
                  ));
                },
              ),
              ButtonWidget(
                buttonName: "Indexed Stack Transition",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const IndexedStackTransitionPage(),
                  ));
                },
              ),
              const Divider(color: Colors.purple, thickness: 3),
              const Center(
                  child: Text(
                "Page Transition Animations Starts Here",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              )),
              const Divider(color: Colors.purple, thickness: 3),
              ButtonWidget(
                buttonName: "Page Fade Transition",
                onTap: () {
                  Navigator.of(context).push(
                    PageFadeTransition(const PageTwo()),
                  );
                },
              ),
              ButtonWidget(
                buttonName: "Page Scale Transition",
                onTap: () {
                  Navigator.of(context).push(
                    PageScaleTransitionScreen(const PageTwo()),
                  );
                },
              ),
              ButtonWidget(
                buttonName: "Page Rotate Transition",
                onTap: () {
                  Navigator.of(context).push(
                    PageRotateTransitionScreen(const PageTwo()),
                  );
                },
              ),
              ButtonWidget(
                buttonName: "Page Slide Transition",
                onTap: () {
                  Navigator.of(context).push(
                    PageSlideTransitionScreen(const PageTwo()),
                  );
                },
              ),
              ButtonWidget(
                buttonName: "Page Size Transition",
                onTap: () {
                  Navigator.of(context).push(
                    PageSizeTransitionScreen(const PageTwo()),
                  );
                },
              ),
              ButtonWidget(
                buttonName: "Page Mix Fade And Size Transition",
                onTap: () {
                  Navigator.of(context).push(
                    PageMixFadeAndSizeTransitionScreen(const PageTwo()),
                  );
                },
              ),
              ButtonWidget(
                buttonName: "Page Mix Scale And Rotate Transition",
                onTap: () {
                  Navigator.of(context).push(
                    PageMixScaleAndRotateTransitionScreen(const PageTwo()),
                  );
                },
              ),
              const Divider(color: Colors.purple, thickness: 3),
              const Center(
                  child: Text(
                "More Animations Starts Here",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              )),
              const Divider(color: Colors.purple, thickness: 3),
              ButtonWidget(
                buttonName: "Custom Painter Animations",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CustomPainterExample(),
                  ));
                },
              ),
              ButtonWidget(
                buttonName: "Lottie Animations",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LottieAnimationExample(),
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
