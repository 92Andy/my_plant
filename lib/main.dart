import 'package:flutter/material.dart';
import 'package:my_plant/login/login_page.dart';

void main() {
  runApp(const MyPlantApp());
}

class MyPlantApp extends StatelessWidget {
  const MyPlantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
