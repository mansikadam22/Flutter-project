import 'package:flutter/material.dart';

class imageonoff extends StatefulWidget {
  @override
  _ImageState createState() =>   _ImageState();
}
class   _ImageState extends State<imageonoff> {
  bool _showImage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEE9C8A),
        title: Text('Hide Show Image',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blueAccent.withOpacity(.15),
              alignment: Alignment.center,
              child: Visibility(
                visible: _showImage,
                child: Image.network(
                  'https://picsum.photos/200', // demo image
                  fit: BoxFit.cover,
                ),
                replacement: const Text(
                  'Image Is Hidden',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          // Switch row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Show Image'),
              Switch(
                value: _showImage,
                onChanged: (val) => setState(() => _showImage = val),
              ),
            ],
          ),
        ],
      ),
    );
  }
}