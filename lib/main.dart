import 'package:flutter/material.dart';
import 'package:what_eat_flutter/pages/app.dart';
import 'styles/theme_regular.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatEat!",
      theme: themeRegular,
      home: App(), 
    );
  }
}