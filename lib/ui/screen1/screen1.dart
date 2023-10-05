import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_task/ui/screen1/widget/all.dart';

class ScreenOne extends StatefulWidget {

  static const String routeName = "ScreenOne";

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  int currentIndex = 0;
  List<Color> itemBackGroundColor = [
    Color(0xffe2f1e8),
    Colors.yellow,
    Colors.red
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 32,
        backgroundColor: Colors.transparent,
        elevation: 0.00,
        title:Row(
          children: [
            Image.asset("assets/images/screenOne_title_logo.png"),
            SizedBox(width: 10,),
            Text(
              "Moody",
              style: TextStyle(
                fontSize: 32,
                color: Colors.black
              ),
            ),
          ],
        ) ,
        actions: [
          Container(
            padding: EdgeInsets.all(20),
            child: Badge(
              backgroundColor: Colors.red,
              largeSize: 15,
              child: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Hello, ",
                    style: TextStyle(
                      color: Color(0xff371B34),
                      fontSize: 24
                    ),
                  ),
                  Text(
                    "Sara Rose",
                    style: TextStyle(
                      color: Color(0xff371B34),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12,),
              Text(
                "How are you feeling today ?",
                style: TextStyle(
                  fontSize: 20
                ),
              ),
              const SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  feelingIcons(imageName: "screenOne_icon_love.png", feelingName: "Love"),
                  feelingIcons(imageName: "screenOne_icon_cool.png", feelingName: "Cool"),
                  feelingIcons(imageName: "screenOne_icon_happy.png", feelingName: "Happy"),
                  feelingIcons(imageName: "screenOne_icon_sad.png", feelingName: "Sad"),
                ],
              ),
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Feature",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: (){},
                          child: Text(
                            "See more",
                            style: TextStyle(
                                fontSize: 18,
                              color: Color(0xff027A48),
                            ),
                          ),
                      ),
                      Icon(Icons.arrow_forward_ios,color: Color(0xff027A48) ,)
                    ],
                  ),

                ],
              ),
              CarouselSlider.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                   itemBuilderOfCarousel(itemBackGroundColor[itemIndex]),
                options:  CarouselOptions(
                  height: 220,
                    aspectRatio: 16/9,
                    viewportFraction: 1.0,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: false,
                    // autoPlayInterval: Duration(seconds: 3),
                    // autoPlayAnimationDuration: Duration(milliseconds: 800),
                    // autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: false,
                    enlargeFactor: 0.5,
                    onPageChanged: (index, reason){} ,
                    scrollDirection: Axis.horizontal,
              ),
              ),
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Exercise",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: (){},
                        child: Text(
                          "See more",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff027A48),
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,color: Color(0xff027A48) ,)
                    ],
                  ),

                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      itemOfExrcise(colorOfItem: Color(0xfff0e2fc),imageName: "screenOne_relaxation_icon.png", exerciseName: "Relaxation"),
                      SizedBox(width: 10,),
                      itemOfExrcise(colorOfItem: Color(0xfff8d2e2),imageName: "screenOne_meditation_icon.png", exerciseName: "Meditation"),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      itemOfExrcise(colorOfItem: Color(0xffFDF2FA),imageName: "screenOne_bearthing_icon.png", exerciseName: "Bearthing"),
                      SizedBox(width: 10,),
                      itemOfExrcise(colorOfItem: Color(0xffF0F9FF),imageName: "screenOne_yoga_icon.png", exerciseName: "Yoga"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),


      bottomNavigationBar:bottomNavigation(),
    );

  }

  bottomNavigation() => BottomNavigationBar(
    currentIndex: currentIndex,
      onTap: (index){
      currentIndex = index;
      setState(() {});
      } ,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Color(0xff027A48),
      selectedLabelStyle: TextStyle(
        color: Color(0xff027A48),
        fontWeight: FontWeight.bold,
        fontSize: 15
      ),
      items:[
        BottomNavigationBarItem(icon:Icon(Icons.home_filled) ,label: "."),
        BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/screenOne_BNB_icon2.png")) ,label: "."),
        BottomNavigationBarItem(icon:Icon(Icons.calendar_today_outlined) ,label: "."),
        BottomNavigationBarItem(icon:Icon(Icons.person) ,label: "."),
      ]
  );
}
