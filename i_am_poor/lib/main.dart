import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown[300],
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text('I AM POOR'),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/appstore.png'),
          ),
        ),
      ),
    ),
  );
}
