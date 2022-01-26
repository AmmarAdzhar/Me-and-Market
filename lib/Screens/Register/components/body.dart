import 'package:flutter/material.dart';
import 'package:me_and_market_auth/Screens/Homepage/homepage_screen.dart';
import 'package:me_and_market_auth/Screens/Register/components/background.dart';
import 'package:me_and_market_auth/Screens/Signup/signup_screen.dart';
import 'package:me_and_market_auth/components/already_have_an_account_acheck.dart';
import 'package:me_and_market_auth/components/rounded_button.dart';
import 'package:me_and_market_auth/components/rounded_input_field.dart';
import 'package:me_and_market_auth/components/rounded_password_field.dart';
import 'package:me_and_market_auth/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "REGISTERATION",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email/Name",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "REGISTER",
              press: () {},
            ),
            RoundedButton(
              text: "HOMEPAGE",
              color: kPrimaryLightColor,
              textColor: Colors.black,
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
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
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
