import 'package:flutter/material.dart';

class Horizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with a title
      appBar: AppBar(
        backgroundColor: Color(0xFF52AED6),
        title: const Text(
          "Horizontal Scrolling Page",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Center(
         child: Column(
        children: [
          SizedBox(height: 100),
          SizedBox(
            height: 100, // Set fixed height for horizontal ListView
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(width: 150, color: Colors.red,
                  child: Center(
                  child: Text("Mansi",
                    style: TextStyle(fontWeight: FontWeight.bold,),)
                ),
                ),
                Container(width: 150, color: Colors.blue,
                  child: Center(
                    child: Text("Mansi",
                      style: TextStyle(fontWeight: FontWeight.bold,),)
                ),
                ),
                Container(width: 150, color: Colors.green,
                  child: Center(
                    child: Text("Mansi",
                      style: TextStyle(fontWeight: FontWeight.bold,),)
                ),
                ),
                Container(width: 150, color: Colors.yellow,
                  child: Center(
                    child: Text("Mansi",
                    style: TextStyle(fontWeight: FontWeight.bold,),)
                ),
                ),
                Container(width: 150, color: Colors.orange,
                  child: Center(
                    child: Text("Mansi",
                      style: TextStyle(fontWeight: FontWeight.bold,),)
                ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
}
