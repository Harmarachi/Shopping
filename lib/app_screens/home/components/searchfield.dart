import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xFF979797).withOpacity(0.1),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Search Product",
            prefixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
      ),
    );
  }
}
