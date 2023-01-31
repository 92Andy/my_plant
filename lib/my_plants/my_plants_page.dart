import 'package:flutter/material.dart';
import 'package:my_plant/constants/my_plant_colors.dart';

class MyPlantsPage extends StatefulWidget {
  const MyPlantsPage({super.key});

  @override
  State<MyPlantsPage> createState() => _MyPlantsPageState();
}

class _MyPlantsPageState extends State<MyPlantsPage> {
  @override
  Widget build(BuildContext context) {
    final rightSlide = MediaQuery.of(context).size.width * 0.25;

    return Stack(
      children: [
        const Scaffold(
          body: _CustomDrawer(),
        ),
        Transform(
          transform: Matrix4.identity()
            ..translate(rightSlide)
            ..scale(0.85),
          alignment: Alignment.bottomCenter,
          child: _MyPlantDetailPage(
            openDrawer: () {},
          ),
        ),
      ],
    );
  }
}

class _MyPlantDetailPage extends StatelessWidget {
  const _MyPlantDetailPage({
    required this.openDrawer,
  });

  final VoidCallback openDrawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyPlantColors.lightGrey,
      body: Center(
        child: OutlinedButton(
          onPressed: openDrawer,
          child: const Text('open drawer'),
        ),
      ),
    );
  }
}

class _CustomDrawer extends StatelessWidget {
  const _CustomDrawer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .3,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: MyPlantColors.greenSmoke,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * .1),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .1,
                  child: Center(
                    child: Text(
                      'My Plants',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 3,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
            width: 30,
            child: MaterialButton(
              color: MyPlantColors.greenSmoke,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              padding: EdgeInsets.zero,
              onPressed: () => Navigator.pop(context),
              child: const Icon(
                Icons.keyboard_double_arrow_left,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
