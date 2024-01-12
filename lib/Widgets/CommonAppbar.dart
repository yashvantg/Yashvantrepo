// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:map/Utility/Constance.dart';

class CommonAppbar extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final bool centerTitle;
  final bool isbackarrow;
  final double elevation;
  const CommonAppbar(
      {super.key,
      required this.title,
      required this.backgroundColor,
      required this.centerTitle,
      this.isbackarrow = false,
      required this.elevation});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation,
      backgroundColor: backgroundColor,
      leading: isbackarrow
          ? const BackButton(
              color: black,
            )
          : const SizedBox.shrink(),
      centerTitle: centerTitle,
      title: Text(
        title,
        style: const TextStyle(color: black),
      ),
      actions: const [],
    );
  }
}
