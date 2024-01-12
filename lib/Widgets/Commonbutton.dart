import 'package:flutter/material.dart';
import 'package:map/Utility/Constance.dart';

class Commonbutton extends StatelessWidget {
  final VoidCallback Button;
  final String text;

  final TextStyle Buttonstyle = TextStyle(
    color: white,
    fontSize: 20,
  );

  Commonbutton({super.key, required this.Button, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Deeppurple, shape: ContinuousRectangleBorder()),
        onPressed: Button,
        child: Text(
          text,
          style: Buttonstyle,
        ));
  }
}
