import 'package:flutter/material.dart';
import 'package:my_plant/constants/my_plant_colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.onLoginClicked,
  });

  final VoidCallback onLoginClicked;

  static const Radius _buttonCircularBorderRadius = Radius.circular(25);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: MaterialButton(
        color: MyPlantColors.greenSmoke,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: _buttonCircularBorderRadius,
            topLeft: _buttonCircularBorderRadius,
          ),
        ),
        child: const Text(
          'Sign In',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
