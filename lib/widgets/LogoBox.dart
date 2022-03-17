import 'package:flutter/material.dart';

class LogoBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container (
        padding: EdgeInsets.all(25),
        width: 300.0,
        height: 300.0,
          child: Container(
            color: Colors.black,
            child: Image.asset('assets/crown.png'),
          ),
      ),
    );
  }
}