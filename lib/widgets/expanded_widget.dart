import 'package:azuki_animation_showcase/components/row_wrap.dart';
import 'package:flutter/material.dart';

import '../models/data.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key, required this.data}) : super(key: key);
  final DataItem data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RowWrap(
              icon1: Icons.person,
              data1: data.hair,
              icon2: Icons.ac_unit,
              data2: data.mouth,
            ),
            const SizedBox(height: 10),
            RowWrap(
              icon1: Icons.remove_red_eye_outlined,
              data1: data.eyes,
              icon2: Icons.back_hand_outlined,
              data2: data.background,
            )
          ],
        ),
      ),
    );
  }
}
