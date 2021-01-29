import 'package:shopping/app_screens/home/home.dart';
// import 'package:shopping/app_screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:shopping/app_screens/onboarding/onboarding.dart';
// import 'package:shopping/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'shopping',
      theme: ThemeData(
          fontFamily: 'Muli',
          appBarTheme: AppBarTheme(
              color: Colors.white,
              elevation: 0,
              brightness: Brightness.light,
              iconTheme: IconThemeData(color: Colors.black),
              textTheme:
                  TextTheme(headline6: TextStyle(color: Color(0XFF8B8B8B)))),
          scaffoldBackgroundColor: Colors.white),
      // initialRoute: Onboarding.routeName,
      // routes: routes,
      home: Scaffold(
        body: Onboarding(),
      ),
    );
  }
}
