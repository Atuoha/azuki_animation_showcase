import 'package:flutter/material.dart';

import '../models/data.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key, required this.data}) : super(key: key);
  final DataItem data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                children: [
                  const Icon(Icons.person),
                  const SizedBox(width: 10),
                  Text(data.hair)
                ],
              ),
              Wrap(
                children: [
                  const Icon(Icons.ac_unit),
                  const SizedBox(width: 10),
                  Text(data.mouth)
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                children: [
                  const Icon(Icons.remove_red_eye_outlined),
                  const SizedBox(width: 10),
                  Text(data.eyes)
                ],
              ),
              Wrap(
                children: [
                  const Icon(Icons.back_hand_outlined),
                  const SizedBox(width: 10),
                  Text(data.mouth)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
