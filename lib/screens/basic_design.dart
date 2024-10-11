// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( 
        children: [
          Image(
            image: AssetImage('assets/landscape.png'),
          ),
          // Title
          Title(),

          // Button Selection
          ButtonSection(),

          // Description
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Text('''Beauclair es la ciudad capital de Toussaint que rodea el Palacio de Beauclair. Probablemente fue construido cuando Peter Faramond reconstruyó el palacio y la duquesa Adela Marta se convirtió en la primera dama del mismo. 
            
La ciudad está compuesta por mercaderes, bardos, viajeros, nobles, ciudadanos corrientes, caballeros y la propia realeza del ducado. '''),
          )
        ]
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Palacio de Beauclair',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Beuclair, Toussaint',
                style: TextStyle(color: Colors.black45),
              )
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('4,8/5'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, text: 'CALL'),
          CustomButton(icon: Icons.near_me, text: 'ROUTE'),
          CustomButton(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.icon,
          color: Colors.blue,
          size: 30,
        ),
        Text(
          this.text,
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
