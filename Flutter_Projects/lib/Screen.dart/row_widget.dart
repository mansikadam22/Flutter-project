import 'package:flutter_projects/screen/Homescreen.dart';
import 'package:flutter/material.dart';
class row_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:[
        Home_screen(),
        Home_screen(),
        Home_screen(),
      ],
    );
  }
}