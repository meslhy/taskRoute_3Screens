import 'package:flutter/material.dart';
import 'package:ui_task/ui/screen1/screen1.dart';
import 'package:ui_task/ui/screen2/screen2.dart';
import 'package:ui_task/ui/screen3/home/home_screen3/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     routes: {
       ScreenOne.routeName : (context) => ScreenOne(),
       ScreenTwo.routeName : (context) => ScreenTwo(),
       Screen3.routeName : (context) => Screen3(),
     },
      initialRoute:Screen3.routeName ,
    );
  }
}
