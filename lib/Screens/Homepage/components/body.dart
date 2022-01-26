import 'package:flutter/material.dart';
import 'package:me_and_market_auth/Screens/Register/register_screen.dart';
import 'package:me_and_market_auth/Screens/Groceries/update_screen.dart';
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
              "WELCOME TO ME AND MARKET",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            Image.asset(
              "assets/images/market.jpeg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "REGISTER",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RegisterScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "GROCERIES",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return UpdateScreen();
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
