import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget feelingIcons(
{
  required String imageName,
  required String feelingName
}
    ) =>InkWell(
  onTap: (){},
  child: Column(
    children: [
      CircleAvatar(
        backgroundColor:Color(0xffE4E7EC),
        radius: 30,
        child: CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage("assets/images/$imageName"),
        ),
      ),
      const SizedBox(height: 8,),
      Text(
        feelingName,
        style: TextStyle(
            fontSize: 20
        ),
      ),
    ],
  ),
);


Widget itemBuilderOfCarousel(
    Color bgColor
    ) => Container(
  decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(20)
  ),
  child: Padding(
    padding: const EdgeInsets.all(24.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(
          flex: 6,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Positive vibes",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                ),
              ),
              SizedBox(height: 8,),
              Text(
                "Boost your mood with positive vibes",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 16,),
              Row(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.play_arrow,color: Colors.white,),
                    backgroundColor: Color(0xff32D583),
                    radius: 18,
                  ),
                  SizedBox(height: 8,),
                  Text(
                    "10 mins",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Image.asset(
            "assets/images/screenOne_caracter_image.png",
          ),
        ),
      ],
    ),
  ),
);


Widget itemOfExrcise({
  required String imageName,
  required String exerciseName,
  required Color colorOfItem,
}) => Expanded(
  child:   Container(
    decoration: BoxDecoration(
      color: colorOfItem,
      borderRadius: BorderRadius.circular(10)
    ),
    
    height: 60,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset("assets/images/$imageName"),
        SizedBox(width: 8,),
        Text(
          exerciseName,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),
      ],
    ),
  ),
);