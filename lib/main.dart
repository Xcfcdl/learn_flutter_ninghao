import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hello',style: TextStyle(fontSize: 25.0),),),
        body:Hello()));
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Center(child: Text('Hello', textDirection: TextDirection.ltr, style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,color: Colors.yellow)));
  }}
