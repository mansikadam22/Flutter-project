import 'package:flutter/material.dart';
class Home_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        color: Colors.white,
        width: 100.0,
        height: 100.0,
        child : Container(
          margin: const EdgeInsets.all(10.0),
          color: Colors.purpleAccent,
          width: 100.0,
          height: 100.0,
          child:Center(
              child:   Text(
                'MK',
                overflow: TextOverflow.fade,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 2,
                  decoration: TextDecoration.none,
                ),
              )
          ),
        ),
      ),
    );
  }//widget
}//class