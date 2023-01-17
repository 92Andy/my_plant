import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_plant/login/widgets/login_background.dart';
import 'package:my_plant/constants/my_plant_colors.dart';
import 'package:my_plant/login/widgets/login_button.dart';
import 'package:my_plant/my_plants/my_plants_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        LoginBackground(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: _LoginInterface(),
        ),
      ],
    );
  }
}

class _LoginInterface extends StatelessWidget {
  const _LoginInterface();

  final SizedBox _verticalSpacer = const SizedBox(height: 40);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const Expanded(
            flex: 2,
            child: SizedBox.shrink(),
          ),
          SvgPicture.asset('assets/myPlantLogo.svg'),
          const SizedBox(height: 60),
          TextField(
            obscureText: false,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person,
                color: MyPlantColors.lightGrey,
              ),
              hintText: 'Username',
              hintStyle: TextStyle(
                color: MyPlantColors.lightGrey,
              ),
              enabledBorder: _underline,
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
                color: MyPlantColors.lightGrey,
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                color: MyPlantColors.lightGrey,
              ),
              enabledBorder: _underline,
            ),
          ),
          _verticalSpacer,
          LoginButton(
            onLoginClicked: () => Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const MyPlantsPage(),
              ),
            ),
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
                    fontSize: 14,
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
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: MyPlantColors.greenSmoke.withOpacity(.7),
                  ),
                ),
              ),
            ],
          ),
          const Expanded(
            flex: 3,
            child: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }

  UnderlineInputBorder get _underline => UnderlineInputBorder(
        borderSide: BorderSide(
          color: MyPlantColors.lightGrey,
        ),
      );
}
