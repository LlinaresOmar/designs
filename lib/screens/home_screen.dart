import 'package:designs/widgets/background.dart';
import 'package:designs/widgets/pageTitle.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
       children: [
        Background(),
        HomeBody(),
       ],
      ),
    );
  }
}

class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(),
        ],
      ),
    );
  }
}
