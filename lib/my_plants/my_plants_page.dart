import 'package:flutter/material.dart';
import 'package:my_plant/constants/my_plant_colors.dart';

class MyPlantsPage extends StatefulWidget {
  const MyPlantsPage({super.key});

  @override
  State<MyPlantsPage> createState() => _MyPlantsPageState();
}

class _MyPlantsPageState extends State<MyPlantsPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const _CustomDrawer(),
      body: Center(
        child: OutlinedButton(
          onPressed: () => setState(() {
            _scaffoldKey.currentState!.openDrawer();
          }),
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
    return Container(
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
    );
  }
}
