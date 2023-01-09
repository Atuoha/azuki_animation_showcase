import 'package:flutter/material.dart';
import 'home_screen.dart';

void main()=> runApp(const AzukiApp());


class AzukiApp extends StatelessWidget{
  const AzukiApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}