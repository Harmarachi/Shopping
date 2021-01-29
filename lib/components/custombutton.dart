import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({@required this.onPressed});
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 235.0,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.deepOrange,
        child: Text(
          'Continue',
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
        height: 45.0,
        onPressed: onPressed,
      ),
    );
  }
}
