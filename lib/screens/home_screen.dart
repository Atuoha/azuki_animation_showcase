import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../data/data.dart';
import '../widgets/data_widget.dart';
import '../widgets/floating_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController();
  var pageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController =
        PageController(initialPage: pageIndex, viewportFraction: 0.88);
  }

  changePage(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: primaryColor.withOpacity(0.5),
      ),
    );
    return Scaffold(
      floatingActionButton: const FloatingButton(),
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: SvgPicture.asset(
          logo,
          width: 150,
          color: litePrimary,
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.search,
              color: litePrimary,
              size: 40,
            ),
          ),
        ),
      ),
      body: PageView.builder(
        controller: pageController,
        itemCount: dataItems.length,
        onPageChanged: (index) => changePage(index),
        itemBuilder: (context, index) => DataWidget(data: dataItems[index]),
      ),
    );
  }
}
