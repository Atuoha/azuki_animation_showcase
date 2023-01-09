import 'package:azuki_animation_showcase/screens/details.dart';
import 'package:flutter/material.dart';
import '../models/data.dart';
import 'expanded_widget.dart';
import 'image_data_widget.dart';

class DataWidget extends StatefulWidget {
  const DataWidget({
    Key? key,
    required this.data,
  }) : super(key: key);
  final DataItem data;

  @override
  State<DataWidget> createState() => _DataWidgetState();
}

class _DataWidgetState extends State<DataWidget> {
  bool isExpanded = false;

  toggleIsExpanded() {
    if (!isExpanded) {
      setState(() {
        isExpanded = !isExpanded;
      });
      return;
    }

    Navigator.of(context).push(
      PageRouteBuilder(
          transitionDuration: const Duration(seconds: 1),
          reverseTransitionDuration: const Duration(seconds: 1),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: const Interval(0, 0.5),
            );

            return FadeTransition(
              opacity: curvedAnimation,
              child: DetailsScreen(data: widget.data),
            );
          }),
    );
  }

  panUpdate(DragUpdateDetails details) {
    if (details.delta.dy < 0) {
      setState(() {
        isExpanded = true;
      });
    } else if (details.delta.dy > 0) {
      setState(() {
        isExpanded = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedPositioned(
            bottom: isExpanded ? 40 : 100,
            duration: const Duration(milliseconds: 500),
            width: isExpanded ? size.width * 0.83 : size.width * 0.8,
            height: isExpanded ? size.height * 0.7 : size.height * 0.6,
            child: AnimatedOpacity(
              opacity: isExpanded ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              child: ExpandedWidget(data: widget.data),
            ),
          ),
          AnimatedPositioned(
            bottom: isExpanded ? 150 : 100,
            duration: const Duration(milliseconds: 500),
            child: GestureDetector(
              onPanUpdate: panUpdate,
              onTap: () => toggleIsExpanded(),
              child:  ImageDataWidget(data: widget.data),
            ),
          )
        ],
      ),
    );
  }
}
