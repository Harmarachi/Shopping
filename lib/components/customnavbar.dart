import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping/app_screens/onboarding/onboarding.dart';
import 'package:shopping/app_screens/profile/profile.dart';
import 'package:shopping/app_screens/home/home.dart';

class CustomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  icon: SvgPicture.asset("assets/icons/Shop Icon.svg"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  }),
              IconButton(
                  icon: SvgPicture.asset("assets/icons/Heart Icon.svg"),
                  onPressed: () {}),
              IconButton(
                  icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Onboarding()));
                  }),
              IconButton(
                  icon: SvgPicture.asset("assets/icons/User Icon.svg"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UserProfile()));
                  })
            ],
          )),
    );
  }
}
