import 'package:flutter/material.dart';

import 'package:shopping/app_screens/profile/avatar.dart';
import 'package:shopping/app_screens/profile/menu.dart';
import 'package:shopping/components/customnavbar.dart';

class UserProfile extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Avatar(),
          SizedBox(
            height: 20,
          ),
          ProfileMenu()
        ],
      )),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
