import 'package:azuki_animation_showcase/constants/color.dart';
import 'package:flutter/material.dart';
import '../models/data.dart';

class ImageDataWidget extends StatelessWidget {
  const ImageDataWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final DataItem data;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.6,
      width: size.width * 0.8,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            buildImage(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildTitle(),
                bottomDetails(),
              ],
            ),
            // bottomDetails(),
          ],
        ),
      ),
    );
  }

  Container buildTitle() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          data.title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  SizedBox buildImage() {
    return SizedBox.expand(
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Image.asset(data.imgUrl, fit: BoxFit.cover),
      ),
    );
  }

  Container bottomDetails() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              data.clothing,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Icon(
              Icons.dataset_outlined,
              color: Colors.white,
            ),
            Text(
              data.offhand,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
