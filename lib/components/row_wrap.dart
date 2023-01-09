import 'package:flutter/material.dart';

class RowWrap extends StatelessWidget {
  const RowWrap({
    Key? key,
    required this.icon1,
    required this.icon2,
    required this.data1,
    required this.data2,
  }) : super(key: key);

  final IconData icon1;
  final IconData icon2;
  final String data1;
  final String data2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Wrap(
          children: [
            Icon(icon1),
            const SizedBox(width: 10),
            Text(data1),
          ],
        ),
        Wrap(
          children: [
            Icon(icon2),
            const SizedBox(width: 10),
            Text(data2),
          ],
        )
      ],
    );
  }
}
