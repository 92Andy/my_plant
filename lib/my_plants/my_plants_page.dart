import 'package:flutter/material.dart';
import 'package:my_plant/constants/my_plant_colors.dart';

final _plants = <String>[
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10',
];

class MyPlantsPage extends StatefulWidget {
  const MyPlantsPage({super.key});

  @override
  State<MyPlantsPage> createState() => _MyPlantsPageState();
}

class _MyPlantsPageState extends State<MyPlantsPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rightTransformationPosX = MediaQuery.of(context).size.width * 0.25;

    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        final rightTranslation =
            rightTransformationPosX * _animationController.value;
        final scaling = 1 - (_animationController.value * 0.15);

        return Stack(
          children: [
            Scaffold(
              body: _CustomDrawer(
                plants: _plants,
              ),
            ),
            Transform(
              transform: Matrix4.identity()
                ..translate(rightTranslation)
                ..scale(scaling),
              alignment: Alignment.bottomCenter,
              child: _MyPlantDetailPage(
                openDrawer: openDrawer,
                animationController: _animationController,
              ),
            ),
            //Todo: ae
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
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
                  onPressed: () =>
                      _animationController.isCompleted ? closeDrawer() : null,
                  child: const Icon(
                    Icons.keyboard_double_arrow_left,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void openDrawer() => _animationController.forward();

  void closeDrawer() => _animationController.reverse();
}

class _MyPlantDetailPage extends StatelessWidget {
  const _MyPlantDetailPage({
    required this.openDrawer,
    required this.animationController,
  });

  final VoidCallback openDrawer;
  final AnimationController animationController;
  final double _borderCircularRadius = 60;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyPlantColors.myPlantWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
              _borderCircularRadius * animationController.value),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: OutlinedButton(
          onPressed: openDrawer,
          child: const Text('open drawer'),
        ),
      ),
    );
  }
}

class _CustomDrawer extends StatelessWidget {
  const _CustomDrawer({
    required this.plants,
  });

  final List<String> plants;

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
              borderRadius: BorderRadius.circular(30),
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
                Expanded(
                  child: ListView(
                    children: List.generate(
                      plants.length,
                      (index) {
                        return _PlantCard(title: plants[index]);
                      },
                    ),
                  ),
                )
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

class _PlantCard extends StatefulWidget {
  const _PlantCard({
    required this.title,
  });

  final String title;

  @override
  State<_PlantCard> createState() => _PlantCardState();
}

class _PlantCardState extends State<_PlantCard> {
  final _diameter = 40.0;
  final _tappedBorderRadius = 20.0;
  bool _tapped = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() {
        _tapped = !_tapped;
      }),
      child: SizedBox(
        height: 100,
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (_tapped)
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(_tappedBorderRadius),
                    bottomLeft: Radius.circular(_tappedBorderRadius),
                  ),
                  color: MyPlantColors.myPlantWhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
              ),
            Container(
              height: _diameter,
              width: _diameter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_diameter),
                color: Colors.white,
              ),
            ),
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
