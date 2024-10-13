// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ScrollDesign extends StatelessWidget {
  final boxDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [
        0.5,
        0.5
      ],
      colors: [
        Color(0xff7EEBCD),
        Color(0xff30BAD6)
      ]));



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: [Page1(), Page2()],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),

        MainContent()
      ],
    );
  }
}

class Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Color(0xff30BAD6),
      alignment: Alignment.topCenter,
      child: Image(image: AssetImage('assets/scroll-1.png'))
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.bold,
      color: Colors.white
    );
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50
          ),
          Text(
            '11º',
            style: textStyle
          ),
          Text(
            'Viernes',
             style: textStyle
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white
          )
        ]),
    );
  }
}

class Page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: (){},
          child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            'Bienvenido',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Color(0xff00A2FF), shape: StadiumBorder()),
        )
      ),
    );
  }
}


