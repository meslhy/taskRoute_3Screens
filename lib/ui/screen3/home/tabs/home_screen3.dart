import 'package:flutter/material.dart';

class HomeScreen3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Column(
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
          
        ],
      ),
    );
  }
}
