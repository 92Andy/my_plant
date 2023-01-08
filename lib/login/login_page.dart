import 'package:flutter/material.dart';
import 'package:my_plant/login/widgets/login_background.dart';
import 'package:my_plant/login/widgets/login_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const LoginBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Username',
                    enabledBorder: UnderlineInputBorder(),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 40),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    hintText: 'Password',
                    enabledBorder: UnderlineInputBorder(),
                  ),
                ),
              ),
              LoginButton(
                onLoginClicked: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
