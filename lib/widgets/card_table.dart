// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';
import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.border_all,
              text: 'General',
            ),
            _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              text: 'Trasnsport',
            ),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.purple, icon: Icons.shop, text: 'Shopping'),
            _SingleCard(
              color: Colors.purpleAccent, icon: Icons.cloud, text: 'Bill')
          ]
        ),
         TableRow(
          children: [
            _SingleCard(
              color: Colors.deepPurple, icon: Icons.movie, text: 'Entertainement'),
            _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.food_bank_outlined,
              text: 'Grocery')
        ]),
         TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
             icon: Icons.border_all,
             text: 'General'),
            _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              text: 'Transport')
          ]
        )
      ],
    );
  }
}


class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

 const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) :super(key: key);
  
  @override
  Widget build(BuildContext context) {
    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: this.color,
          child: Icon(
            this.icon,
            size: 35,
          ),
          radius: 30,
        ),
        SizedBox(height: 15),
        Text(
          this.text,
          style: TextStyle(color: this.color, fontSize: 18),
        )
      ],
    );
    return _CardBackground(child: column);
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
      color: Color.fromRGBO(62, 66, 107, 0.7),
      borderRadius: BorderRadius.circular(20)
    );

    return Container(
      margin: EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: boxDecoration,
            child: this.child,
          ),
          ),
      ),
    );
  }
}
