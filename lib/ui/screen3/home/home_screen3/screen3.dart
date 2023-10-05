import 'package:flutter/material.dart';
import 'package:ui_task/ui/screen2/tabs/more_tabs/tab3.dart';
import 'package:ui_task/ui/screen2/tabs/more_tabs/tab4.dart';
import 'package:ui_task/ui/screen2/tabs/more_tabs/tab_2.dart';
import 'package:ui_task/ui/screen3/home/tabs/home_screen3.dart';

class Screen3 extends StatefulWidget {

  static const String routeName = "ScreenTwo";

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  int currentIndex =0;

  List <Widget> screens = [
    HomeScreen3(),
    Tab2(),
    Tab3(),
    Tab4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        titleSpacing: 32,
        backgroundColor: Colors.transparent,
        elevation: 0.00,
        title: Image.asset("assets/images/screen3_title.png"),
        centerTitle: true,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: bottomNavigation(),
    );
  }

  bottomNavigation() => BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index){
        currentIndex = index;
        setState(() {});
      } ,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Color(0xff363F72),
      selectedLabelStyle: TextStyle(
          color: Color(0xff363F72),
          fontWeight: FontWeight.bold,
          fontSize: 15
      ),
      items:[
        BottomNavigationBarItem(icon:Icon(Icons.home_filled) ,label: "."),
        BottomNavigationBarItem(icon:Icon(Icons.navigation_outlined) ,label: "."),
        BottomNavigationBarItem(icon:Icon(Icons.bar_chart) ,label: "."),
        BottomNavigationBarItem(icon:Icon(Icons.person) ,label: "."),
      ]
  );
}
