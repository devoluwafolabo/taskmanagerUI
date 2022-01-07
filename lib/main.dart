// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'onbording.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHompageState createState() => _MyHompageState();
}

class _MyHompageState extends State<MyHomePage> {

  @override
  void initState() {
    Timer(Duration(seconds: 10), openOnbording);
    // TODO: implement initState
    super.initState();

  }

  void openOnbording(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Onbording()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
         decoration: BoxDecoration(
           image: DecorationImage(
               image: AssetImage("assets/images/logo1.png")
           ),
         ),
        ),
      ),
    );
  }
}
