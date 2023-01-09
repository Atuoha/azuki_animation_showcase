import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../models/mind_map.dart';

class SingleMindMap extends StatelessWidget {
  const SingleMindMap({Key? key, required this.map}) : super(key: key);
  final MindMap map;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgColor,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            map.id.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              color: mindMapColor,
              fontSize: 150,
            ),
          ),
          Positioned(
            right: 20,
            bottom: 10,
            child: Hero(
              tag:map.id,
              child: Image.asset(
                map.imgUrl,
                width: 100,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 20,
            child: Text(
              map.title,
              style: const TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          )
        ],
      ),
    );
  }
}
