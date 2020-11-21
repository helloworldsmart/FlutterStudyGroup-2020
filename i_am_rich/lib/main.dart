import 'package:flutter/material.dart';

//The main function is the starting point for all our Flutter apps.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: NetworkImage('https://d3gl5uvjs9q0p7.cloudfront.net/uploads/2017/11/aurora-1185464_1280-e1511447658745.jpg'),
          ),
        )
      ),
    ),
  );
}
