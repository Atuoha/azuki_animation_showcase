import 'package:animations/animations.dart';
import 'package:azuki_animation_showcase/data/mind_map.dart';
import 'package:azuki_animation_showcase/screens/info_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/constants.dart';
import '../widgets/single_mind_map.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: mindMapItems.length,
          itemBuilder: (context, index) => OpenContainer(
            transitionDuration: const Duration(seconds: 1),
            transitionType: ContainerTransitionType.fadeThrough,
            closedBuilder: (BuildContext context, void Function() action) =>
                SingleMindMap(map: mindMapItems[index]),
            openBuilder: (BuildContext context,
                    void Function({Object? returnValue}) action) =>
                InfoDetails(
              item: mindMapItems[index],
            ),
          ),
        ),
      ),
    );
  }
}
