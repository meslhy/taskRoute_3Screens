import 'package:flutter/material.dart';
import 'package:ui_task/ui/screen2/tabs/home_screen/home_screen.dart';
import 'package:ui_task/ui/screen2/tabs/more_tabs/tab3.dart';
import 'package:ui_task/ui/screen2/tabs/more_tabs/tab4.dart';
import 'package:ui_task/ui/screen2/tabs/more_tabs/tab_2.dart';
import 'package:ui_task/ui/screen2/widgets/all.dart';

class ScreenTwo extends StatefulWidget {

  static const String routeName = "ScreenTwo";


  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo>  {
  int currentIndex = 0;

  List <Widget> screens = [
   HomeScreen() ,
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
        title:Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/screenTwo_title_image.png"),
              radius: 28,
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, Jade",
                  style: TextStyle(
                    color: Color(0xff371B34),
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Ready to workout?",
                  style: TextStyle(
                    color: Color(0xff371B34),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ) ,
        actions: [
          Container(
            padding: EdgeInsets.all(40),
            child: Badge(
              backgroundColor: Colors.red,
              largeSize: 20,
              child: Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ],
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

