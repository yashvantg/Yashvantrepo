// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:map/Utility/Constance.dart';

class Commonbutton extends StatelessWidget {
  final VoidCallback Button;
  final String text;

  final TextStyle Buttonstyle = const TextStyle(
    color: white,
    fontSize: 20,
  );

  const Commonbutton({super.key, required this.Button, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Deeppurple,
            shape: const ContinuousRectangleBorder()),
        onPressed: Button,
        child: Text(
          text,
          style: Buttonstyle,
        ));
  }
}
