import 'package:flutter/material.dart';
import 'package:my_plant/constants/my_plant_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: const [
        SizedBox(
          height: 100,
        ),
        TopLeftLoginForegroundShape(),
      ],
    ));
  }
}

class TopLeftLoginForegroundShape extends StatelessWidget {
  const TopLeftLoginForegroundShape({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _TopLeftLoginForegroundShapeClipper(),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        color: MyPlantColors.deco,
      ),
    );
  }
}

class _TopLeftLoginForegroundShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final shapeHeightMaxY = size.height - 100;
    final shapeStartPointX = size.width * .5;
    Path path = Path()
      ..moveTo(shapeStartPointX, 0)
      ..quadraticBezierTo(
        shapeStartPointX + 95,
        size.height * .2,
        shapeStartPointX + 70,
        shapeHeightMaxY,
      )
      ..quadraticBezierTo(
        shapeStartPointX + 60,
        size.height - 55,
        shapeStartPointX + 140,
        size.height - 90,
      )
      ..quadraticBezierTo(
        size.width - 30,
        size.height - 100,
        size.width,
        size.height - 95,
      )
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>
      true; //For debugging
}
