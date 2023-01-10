import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_plant/constants/my_plant_colors.dart';
import 'package:simple_shadow/simple_shadow.dart';

class LoginBackground extends StatelessWidget {
  const LoginBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: SvgPicture.asset(
            'assets/topLeftBackgroundShape.svg',
            color: MyPlantColors.greenSmoke,
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: SimpleShadow(
            offset: const Offset(-3, 5),
            color: Colors.black.withOpacity(.5),
            child: SvgPicture.asset(
              'assets/topLeftForegroundShape.svg',
              color: MyPlantColors.deco,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: SvgPicture.asset(
            'assets/bottomRightBackgroundShape.svg',
            color: MyPlantColors.berylGreen,
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: SvgPicture.asset(
            'assets/bottomRightMiddleShape.svg',
            color: MyPlantColors.deco,
            height: MediaQuery.of(context).size.width * .15,
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: SvgPicture.asset(
            'assets/bottomRightForegroundShape.svg',
            color: MyPlantColors.greenSmoke,
            width: MediaQuery.of(context).size.width * .6,
          ),
        ),
      ],
    );
  }
}
