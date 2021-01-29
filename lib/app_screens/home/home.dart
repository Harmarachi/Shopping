import 'package:flutter/material.dart';
import 'package:shopping/components/customnavbar.dart';
import 'package:shopping/app_screens/home/components/discount.dart';
import 'package:shopping/app_screens/home/components/flash.dart';
import 'package:shopping/app_screens/home/components/popular.dart';
import 'package:shopping/app_screens/home/components/searchwidget.dart';
import 'package:shopping/app_screens/home/components/special.dart';

class Home extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SearchWidget(),
          SizedBox(
            height: 10,
          ),
          Discount(),
          SizedBox(
            height: 20,
          ),
          FlashCards(),
          SizedBox(
            height: 20,
          ),
          Special(),
          SizedBox(
            height: 30,
          ),
          PopularProduct(),
          SizedBox(
            height: 30,
          )
        ],
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
