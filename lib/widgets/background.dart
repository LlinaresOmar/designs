// ignore_for_file: prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'dart:math';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final backgroundDecoration = BoxDecoration(
    gradient: LinearGradient(
        colors: [
          Color(0xff2E305F),
          Color(0xff202333),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.2, 0.8]),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: backgroundDecoration,
        ),
        Positioned(
          top: -100,
          left: -30,
          child: PinkBox(),
        ),
      ],
    );
  }
}

class PinkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi/3.5,
      child: Container(
          width: 350,
          height: 350,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(187, 227, 54, 227),
                const Color.fromARGB(250, 194, 119, 235),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight
              ),
              borderRadius: BorderRadius.circular(80)
            )
          ),
    );
  }
}
