import 'package:flutter/material.dart';
import 'package:me_and_market_auth/Screens/Homepage/homepage_screen.dart';
import 'package:me_and_market_auth/Screens/Homepage/components/background.dart';
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
              "VEGETABLES",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            Image.asset(
              "assets/Images/Vegetable.jpg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "KALE",
              press: () {},
            ),
            RoundedButton(
              text: "CARROT",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {},
            ),
            RoundedButton(
              text: "GARLIC",
              press: () {},
            ),
            RoundedButton(
              text: "EGGPLANT",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {},
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
