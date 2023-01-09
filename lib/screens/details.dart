import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';

import '../components/row_wrap.dart';
import '../constants/constants.dart';
import '../models/data.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.data}) : super(key: key);
  final DataItem data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // backgroundColor: Colors.white70,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: data.id,
            child: Image.asset(
              data.imgUrl,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 10),
                ReadMoreText(
                  data.content,
                  trimLines: 2,
                  preDataTextStyle: const TextStyle(fontWeight: FontWeight.w500),
                  style: const TextStyle(color: Colors.black),
                  colorClickableText: litePrimary,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '...Show more',
                  trimExpandedText: ' show less',
                ),
                const SizedBox(height: 12),
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
                ),
                const SizedBox(height: 10),
                RowWrap(
                  icon1: Icons.handshake,
                  data1: data.offhand,
                  icon2: Icons.nature,
                  data2: data.headgear,
                ),
                const SizedBox(height: 10),
                RowWrap(
                  icon1: Icons.person_pin_rounded,
                  data1: data.clothing,
                  icon2: Icons.group,
                  data2: data.type,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
// final String type;
// final String hair;
// final String headgear;
// final String clothing;
// final String eyes;
// final String mouth;
// final String offhand;
// final String background;
// final String imgUrl;
// final String content;
