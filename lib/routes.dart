import 'package:flutter/widgets.dart';
import 'package:shopping/app_screens/home/home.dart';
import 'package:shopping/app_screens/onboarding/onboarding.dart';
import 'package:shopping/app_screens/profile/profile.dart';

final Map<String, WidgetBuilder> routes = {
  Home.routeName: (context) => Home(),
  Onboarding.routeName: (context) => Onboarding(),
  UserProfile.routeName: (context) => UserProfile()
};
