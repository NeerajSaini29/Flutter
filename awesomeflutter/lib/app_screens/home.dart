import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: Text(
          "Flight",
          style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 75.0,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w700,
              //fontStyle: FontStyle.italic,
              color: Colors.white),
        ),
      ),
    );
  }
}
