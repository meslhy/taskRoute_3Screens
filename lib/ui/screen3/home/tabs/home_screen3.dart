import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_task/ui/screen1/widget/all.dart';

class HomeScreen3 extends StatelessWidget {

  List<String> tags = [];
  List<String> options = [
    'Discover','News',
    'Most Viewed','Saved'
  ];
  List<String> selectedOptions = [
    'Discover',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              keyboardType:TextInputType.text ,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Articles, Video, Audio and More,...",
                prefixIcon: Icon(Icons.search_rounded),
                suffixIconColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                focusedBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(15)
                ),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
              style: TextStyle(
                fontSize: 20,

              ),

            ),
            const SizedBox(height: 12,),
            Wrap(
              spacing: 2,
              children: options.map((tag){
                return Chip(
                  label: Text(tag),
                  backgroundColor: selectedOptions.contains(tag)? Color(0xffD6BBFB):Colors.white,
                  side: BorderSide(color: Colors.grey),
                  labelStyle: TextStyle(
                    color:selectedOptions.contains(tag)?Color(0xff6941C6): Color(0xff667085)
                  ),
                ) ;
              }).toList(),
            ),
            const SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Hot topics",
                  style: TextStyle(
                      fontSize: 18,
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
                          fontSize: 14,
                          color: Color(0xff5925DC),
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios,color: Color(0xff5925DC) ,)
                  ],
                ),

              ],
            ),
            const SizedBox(height: 12,),
            CarouselSlider.builder(
              itemCount: 2,
              itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                  itemBuilderOfCarousel(Color(0xffE4CDE8)),
              options:  CarouselOptions(
                height: 220,
                aspectRatio: 16/9,
                viewportFraction: 1.0,
                initialPage: 0,
                enableInfiniteScroll: false,
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
            const SizedBox(height: 12,),
            const Text(
              "Get Tips",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 12,),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)
              ),
              height: 200,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Image.asset("assets/images/doctor_image.png"),
                      flex:3 ,
                    ),
                    Expanded(
                      flex: 6,
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Connect with doctors & get suggestions",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "Connect now and get expert insights ",
                            style: TextStyle(
                                fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 10,),
                          ElevatedButton(
                              onPressed:() {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color(
                                  0xff987adc))
                            ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "View detail",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Cycle Phases and Period",
                  style: TextStyle(
                      fontSize: 18,
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
                          fontSize: 14,
                          color: Color(0xff5925DC),
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios,color: Color(0xff5925DC) ,)
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
