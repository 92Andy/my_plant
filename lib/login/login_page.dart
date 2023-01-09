import 'package:flutter/material.dart';
import 'package:my_plant/constants/my_plant_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          TopLeftLoginBackgroundShape(),
          TopLeftLoginForegroundShape(),
        ],
      ),
    );
  }
}

class TopLeftLoginBackgroundShape extends StatelessWidget {
  const TopLeftLoginBackgroundShape({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _TopLeftLoginBackgroundShapeClipper(),
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        color: MyPlantColors.greenSmoke,
      ),
    );
  }
}

class _TopLeftLoginBackgroundShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final shapeHeightMaxY = size.height * .7;
    final shapeStartPointX = size.width * .3;
    Path path = Path()
      ..moveTo(shapeStartPointX, 0)
      ..quadraticBezierTo(
        shapeStartPointX * 1,
        size.height * .6,
        shapeStartPointX * 2,
        shapeHeightMaxY * .6,
      )
      ..quadraticBezierTo(
        size.width * .9,
        size.height * .3,
        size.width,
        shapeHeightMaxY,
      )
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
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
    final shapeHeightMaxY = size.height * .5;
    final shapeStartPointX = size.width * .5;
    Path path = Path()
      ..moveTo(shapeStartPointX, 0)
      ..quadraticBezierTo(
        shapeStartPointX * 1.45,
        size.height * .2,
        shapeStartPointX * 1.35,
        shapeHeightMaxY,
      )
      ..quadraticBezierTo(
        shapeStartPointX * 1.25,
        size.height * .7,
        shapeStartPointX * 1.7,
        size.height * .5,
      )
      ..quadraticBezierTo(
        size.width * .9,
        size.height * .45,
        size.width,
        size.height * .5,
      )
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>
      true; //For debugging
}
