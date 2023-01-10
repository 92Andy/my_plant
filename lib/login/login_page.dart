import 'package:flutter/material.dart';
import 'package:my_plant/login/widgets/login_background.dart';
import 'package:my_plant/login/widgets/login_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const LoginBackground(),
        Center(
          child: LoginButton(
            onLoginClicked: () {},
          ),
        ),
      ]),
    );
  }
}
