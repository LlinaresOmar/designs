// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          label: 'Calendario',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart_outline),
          label: 'Add'),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_outlined),
          label: 'Supervisar'
        )
      ],
    );
  }
}
