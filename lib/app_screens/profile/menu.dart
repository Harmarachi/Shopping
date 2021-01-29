import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Menu(
              icon: "assets/icons/User Icon.svg",
              text: "My Account",
              press: () {}),
          Menu(
              icon: "assets/icons/Bell.svg",
              text: "Notification",
              press: () {}),
          Menu(
              icon: "assets/icons/Settings.svg",
              text: "Settings",
              press: () {}),
          Menu(
              icon: "assets/icons/Question mark.svg",
              text: "Help Center",
              press: () {}),
          Menu(icon: "assets/icons/Log out.svg", text: "Log Out", press: () {}),
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu(
      {Key key, @required this.icon, @required this.text, @required this.press})
      : super(key: key);

  final String icon, text;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: FlatButton(
        onPressed: press,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        color: Color(0xFFF5F6F9),
        height: 50.0,
        child: Row(
          children: [
            SvgPicture.asset(icon),
            SizedBox(width: 20),
            Expanded(child: Text(text)),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
