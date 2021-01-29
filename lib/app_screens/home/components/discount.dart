import 'dart:ui';

import 'package:flutter/material.dart';

class Discount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 70,
      width: double.infinity,
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      decoration: BoxDecoration(
          color: Colors.deepPurple, borderRadius: BorderRadius.circular(20.0)),
      child:
          Text.rich(TextSpan(style: TextStyle(color: Colors.white), children: [
        TextSpan(text: "A summer surprise\n"),
        TextSpan(
            text: "Cashback 20%",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0))
      ])),
    );
  }
}
