
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hojor/homepage.dart';

void main()async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(
        
      ),
    );
  }
}