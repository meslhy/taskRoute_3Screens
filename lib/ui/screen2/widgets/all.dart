import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget itemOfScreen2() => Container(
  decoration: BoxDecoration(
    color: Color(0xfff3f4ff),
    borderRadius: BorderRadius.circular(10),
    border: Border.all(
        color: Colors.grey.shade300,
        width: 1
    ),
  ),
  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 24),
  child:Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  color: Colors.grey,
                  width: 1
              ),

            ),
            height: 40,
            width: 100,
            child: Center(
              child: Text(
                "7 days",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          SizedBox(height: 12,),
          Text(
            "Morning Yoga",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),

          ),
          SizedBox(height:12 ,),
          Text(
            "Improve mental focus.",
            style: TextStyle(
              fontSize: 18,

            ),

          ),
          SizedBox(height:12 ,),
          Row(
            children: [
              Icon(Icons.watch_later_outlined),
              SizedBox(width: 12,),
              Text(
                "30 mins",
                style: TextStyle(
                  fontSize: 18,

                ),

              ),
            ],
          ),

        ],

      ),
      Expanded(child: Image.asset("assets/images/screenTwo_image_body.png"))
    ],
  ) ,
);