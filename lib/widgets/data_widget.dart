import 'package:flutter/material.dart';
import '../models/data.dart';
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
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  panUpdate(DragUpdateDetails details){
    if(details.delta.dy < 0){
      setState(() {
        isExpanded = true;
      });
    }else if(details.delta.dy > 0){
      setState(() {
        isExpanded = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:4.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedPositioned(
            // left: 0,
            // right: 0,
            // top: 0,
            bottom: isExpanded ? 150 : 100,
            duration: const Duration(milliseconds: 500),
            child: GestureDetector(
              onPanUpdate: panUpdate,
              // onTap: () => toggleIsExpanded(),
              child: ImageDataWidget(data: widget.data),
            ),
          )
        ],
      ),
    );
  }
}
