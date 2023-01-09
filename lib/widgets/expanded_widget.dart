import 'package:flutter/material.dart';
import '../models/data.dart';
import 'image_widget.dart';

class ExpandedWidget extends StatefulWidget {
  const ExpandedWidget({
    Key? key,
    required this.data,
  }) : super(key: key);
  final DataItem data;

  @override
  State<ExpandedWidget> createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: DataWidget(data: widget.data),
    );
  }
}
