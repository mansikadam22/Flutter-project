import 'package:flutter_projects/screen/Homescreen.dart';
import 'package:flutter/material.dart';
class row_column extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Home_screen(),
                Home_screen(),
                Home_screen(),
              ]
          ),


          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Home_screen(),
                Home_screen(),
                Home_screen(),
              ]
          ),

          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Home_screen(),
                Home_screen(),
                Home_screen(),
              ]
          ),

        ]

    );



  }
}