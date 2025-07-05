import 'package:flutter/material.dart';

class vertical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with a title
      appBar: AppBar(
        backgroundColor: Color(0xFF52AED6),
        title: const Text(
          "Scrolling page",
          style: TextStyle(color: Colors.black),
        ),
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            SizedBox(
              height: 100, // Set fixed height for horizontal ListView
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Container(width: 150,height:300, color: Colors.red,
                    child: Center(
                        child: Text("Mansi",
                          style: TextStyle(fontWeight: FontWeight.bold,),)
                    ),
                  ),
                  Container(width: 150,height:300, color: Colors.blue,
                    child: Center(
                        child: Text("Mansi",
                          style: TextStyle(fontWeight: FontWeight.bold,),)
                    ),
                  ),
                  Container(width: 150,height:300, color: Colors.green,
                    child: Center(
                        child: Text("Mansi",
                          style: TextStyle(fontWeight: FontWeight.bold,),)
                    ),
                  ),
                  Container(width: 150,height:300, color: Colors.yellow,
                    child: Center(
                        child: Text("Mansi",
                          style: TextStyle(fontWeight: FontWeight.bold,),)
                    ),
                  ),
                  Container(width: 150,height:300, color: Colors.orange,
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
