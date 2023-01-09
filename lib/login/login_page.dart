import 'package:flutter/material.dart';
import 'package:my_plant/login/widgets/login_background.dart';
import 'package:my_plant/constants/my_plant_colors.dart';
import 'package:my_plant/login/widgets/login_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: const Icon(
                    Icons.person,
                    color: Color(0xffc6c6c6),
                  ),
                  hintText: 'Username',
                  hintStyle: const TextStyle(
                    color: Color(0xffc6c6c6),
                  ),
                  enabledBorder: myUnderlineBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 40),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: const Icon(
                    Icons.lock,
                    color: Color(0xffc6c6c6),
                  ),
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                    color: Color(0xffc6c6c6),
                  ),
                  enabledBorder: myUnderlineBorder(),
                ),
              ),
            ),
            LoginButton(
              onLoginClicked: () {},
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                40,
                40,
                20,
                0,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 60,
                    ),
                    child: TextButton(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 60,
                    ),
                    child: TextButton(
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }

  UnderlineInputBorder myUnderlineBorder() {
    return const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffc6c6c6),
      ),
    );
  }
}
