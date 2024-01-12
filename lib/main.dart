import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:map/View/Login.dart';

void main() {
  runApp(const Quiz());
}

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: Loginscreen(),
    );
  }
}
//hello world