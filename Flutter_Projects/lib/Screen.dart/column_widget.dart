import 'package:flutter_projects/screen/Homescreen.dart';
import 'package:flutter/material.dart';
class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Home_screen(),
        Home_screen(),
        Home_screen(),
      ],
    );
  }
}