import 'package:azuki_animation_showcase/data/mind_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';

import '../constants/constants.dart';
import '../models/mind_map.dart';

class InfoDetails extends StatelessWidget {
  const InfoDetails({Key? key, required this.item}) : super(key: key);
  final MindMap item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          logo,
          width: 150,
          color: litePrimary,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.search,
              color: litePrimary,
              size: 40,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(
                Icons.close,
                color: litePrimary,
                size: 40,
              ),
            ),
          )
        ],
      ),
      backgroundColor: bgColor,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(item.imgUrl),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 10),
              ReadMoreText(
                item.content,
                trimLines: 2,
                preDataTextStyle: const TextStyle(fontWeight: FontWeight.w500),
                style: const TextStyle(color: Colors.black),
                colorClickableText: litePrimary,
                trimMode: TrimMode.Line,
                trimCollapsedText: '...Show more',
                trimExpandedText: ' show less',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
