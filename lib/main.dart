// ignore_for_file: prefer_const_constructors
import 'package:eletric_app_calc/page2.dart';
import 'package:eletric_app_calc/page1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
            AppBar(
              title: const Text ('Calculator for electric'),
            ),
      body:Center(
        child: 
          Column(
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Page1()),
                  );
              }, child: const Text('Page1')),
              
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Ohm()),
                  );
              }, child: const Text('Page2'))
            ],
          ),
        ),
    );
  }
}