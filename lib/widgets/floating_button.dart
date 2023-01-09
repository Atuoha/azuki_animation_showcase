import 'package:azuki_animation_showcase/constants/color.dart';
import 'package:azuki_animation_showcase/screens/info.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedShape: const CircleBorder(),
      transitionDuration: const Duration(seconds: 3),
      transitionType: ContainerTransitionType.fadeThrough,
      closedBuilder: (BuildContext context, void Function() action) =>
          Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: litePrimary,
        ),
        height: 56,
        width: 56,
        child: const Icon(
          Icons.info,
          color: Colors.white,
        ),
      ),
      openBuilder: (
        BuildContext context,
        void Function({Object? returnValue}) action,
      ) =>
          const InfoScreen(),
    );
  }
}
