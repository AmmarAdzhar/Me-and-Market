import 'package:flutter/material.dart';
import 'package:me_and_market_auth/Screens/Homepage/components/background.dart';
import 'package:me_and_market_auth/Screens/Homepage/homepage_screen.dart';
import 'package:me_and_market_auth/Screens/Meat/record%20view%20status_screen.dart';
import 'package:me_and_market_auth/Screens/Vegetable/scan_screen.dart';
import 'package:me_and_market_auth/components/rounded_button.dart';
import 'package:me_and_market_auth/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "GROCERIES",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            Image.asset(
              "assets/images/Food.jpg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "MEATS",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RecordViewStatusScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "VEGETABLES",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ScanScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "HOMEPAGE",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomepageScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
