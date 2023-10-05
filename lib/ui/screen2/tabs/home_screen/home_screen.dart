import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_task/ui/screen2/widgets/all.dart';

class  HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  Widget build(BuildContext context) {
    _tabController = TabController(length: 4, vsync:this);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color:Color(0xfff3f4ff),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.heart_broken,color: Colors.grey,),
                        Text(
                          "Heart Rate",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "81",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "BPM",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 50,
                    width: 1,
                    color: Colors.grey,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.list,color: Colors.grey,),
                        Text(
                          "TO-do",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "32.5",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "%",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 50,
                    width: 1,
                    color: Colors.grey,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.local_fire_department_outlined,color: Colors.grey,),
                        Text(
                          "Calo",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "1000",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "cal",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 24,),
          Text(
            "Workout Programs",
            style: TextStyle(
              color: Color(0xff371B34),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16,),
          TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              dividerColor: Colors.white,
              unselectedLabelColor: Colors.grey,

              tabs: [
                Tab(text: "All Type"),
                Tab(text: "Full Body"),
                Tab(text: "Upper"),
                Tab(text: "Lower"),
              ]
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 12
              ),
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.separated(
                    itemBuilder:(context, index) => itemOfScreen2(),
                    separatorBuilder: (context, index) =>Divider() ,
                    itemCount:10 ,
                  ),
                  Text("yousef"),
                  Text("hahhhj"),
                  Text("hi"),
                ],
              ),
            ),
          ),
        ],
      ),
    ) ;
  }
}
