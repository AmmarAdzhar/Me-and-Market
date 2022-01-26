import 'package:flutter/material.dart';
import 'package:me_and_market_auth/Screens/Homepage/homepage_screen.dart';
import 'package:me_and_market_auth/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Me and Market',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomepageScreen(),
    );
  }
}
