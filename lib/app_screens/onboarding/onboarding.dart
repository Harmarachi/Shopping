import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shopping/app_screens/home/home.dart';
// import 'package:shopping/app_screens/profile/profile.dart';
import 'package:shopping/components/custombutton.dart';

class Onboarding extends StatelessWidget {
  static String routeName = "/onboarding";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Spacer(
                      flex: 2,
                    ),
                    Text(
                      "TOKOTO",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.deepOrange,
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Welcome to Tokoto, Let's shop!",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
                          decoration: TextDecoration.none),
                    ),
                    Spacer(
                      flex: 5,
                    ),
                    Image.asset(
                      'assets/images/splash_1.png',
                      height: 265.0,
                      width: 235.0,
                      // fit: BoxFit.fitWidth,
                      scale: 1.0,
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(3.0)),
                            width: 6.0,
                            height: 6.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(3.0)),
                            width: 6.0,
                            height: 6.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(3.0)),
                            width: 6.0,
                            height: 6.0,
                          ),
                        ]),
                    Spacer(
                      flex: 8,
                    ),
                    CustomButton(onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    }),
                    Spacer(
                      flex: 2,
                    )
                  ],
                ))));
  }
}
