import 'package:azuki_animation_showcase/constants/color.dart';
import 'package:flutter/material.dart';
import '../models/data.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final DataItem data;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(data.imgUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: bgColor.withOpacity(0.5),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(5),
            topLeft: Radius.circular(5),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(Icons.dataset_outlined),
              Text(data.type),
            ],
          ),
        ),
      ),
    );
  }
}
