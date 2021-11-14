import 'package:flutter/material.dart';
import 'package:flutter_sample_app/TestPage2.dart';

class TestPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test1"),
      ),
      body: Center(
        child: Container(
          color: Colors.redAccent,
          child: Text("test1", style: TextStyle(fontSize: 80))
        )
      )
    );
  }
}