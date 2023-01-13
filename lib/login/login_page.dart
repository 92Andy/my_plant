import 'package:flutter/material.dart';
import 'package:my_plant/login/widgets/login_background.dart';
import 'package:my_plant/constants/my_plant_colors.dart';
import 'package:my_plant/login/widgets/login_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  final SizedBox _verticalSpacer = const SizedBox(height: 40);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const LoginBackground(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: MyPlantColors.lightGrey,
                  ),
                  hintText: 'Username',
                  hintStyle: TextStyle(
                    color: MyPlantColors.lightGrey,
                  ),
                  enabledBorder: myUnderlineBorder(),
                ),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.lock,
                  color: MyPlantColors.lightGrey,
                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: MyPlantColors.lightGrey,
                ),
                enabledBorder: myUnderlineBorder(),
              ),
            ),
            _verticalSpacer,
            LoginButton(
              onLoginClicked: () {},
            ),
            _verticalSpacer,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password ?',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: MyPlantColors.greenSmoke.withOpacity(.7),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: MyPlantColors.greenSmoke.withOpacity(.7),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }

  UnderlineInputBorder myUnderlineBorder() {
    return UnderlineInputBorder(
      borderSide: BorderSide(
        color: MyPlantColors.lightGrey,
      ),
    );
  }
}
