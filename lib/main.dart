import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main()=> runApp(const AzukiApp());


class AzukiApp extends StatelessWidget{
  const AzukiApp({super.key});

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      theme:ThemeData(fontFamily: 'Rajdhani'),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen()
    );
  }
}