import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
            height: 115.0,
            width: 115.0,
            child: Stack(
              fit: StackFit.expand,
              overflow: Overflow.visible,
              children: [
                Image.asset(
                  'assets/images/Profile Image.png',
                ),
                Positioned(
                    bottom: 0.0,
                    right: -15,
                    child: SizedBox(
                      height: 46,
                      width: 46,
                      child: FlatButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        color: Color(0xFFF5F6F9),
                        child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
                      ),
                    ))
              ],
            )));
  }
}
