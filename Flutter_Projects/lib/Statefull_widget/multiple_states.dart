import 'package:flutter/material.dart';
class Multiplestate extends StatefulWidget {
  @override
  _MultiplestatesState createState() =>   _MultiplestatesState();
}

class   _MultiplestatesState extends State<Multiplestate> {
  bool isOn=false;
  String _name='';

  void _toggleSwitch(bool value) {
    setState(() {
      isOn = value;
    });
  }

  void updateName(String value){
    setState(() {
      _name=value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFAEE1C7),
        title: Text('Multi-State Widget',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 90,
              width: 130,
              margin: const EdgeInsets.all(10.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFEEA0C0),
              ),
              child: Column(
                children: [
                  Text('Switch Button'),
                  Switch(value: isOn,
                      onChanged: _toggleSwitch
                  )
                ],
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0), // indent and endIndent
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
                onChanged: updateName,
              ),
            ),

            SizedBox(height: 20),

            Container(
              child: Text('Type Name Here:$_name'),
            )
          ],
        ),
      ),
    );
  }
}