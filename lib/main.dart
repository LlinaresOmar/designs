// ignore_for_file: prefer_const_constructors

import 'package:designs/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:designs/screens/basic_design.dart';
import 'package:designs/screens/scroll_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {'home_screen': (_)=> HomeScreen()},
    );
  }
}
