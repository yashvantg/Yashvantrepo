// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:map/Utility/Constance.dart';
import 'package:map/View/Chapterscreen.dart';
import 'package:map/View/Dashboard.dart';
import 'package:map/View/QuestionScreen.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int abc = 0;

  void onTabTapped(int index) {
    setState(() {
      abc = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: abc == 0
          ? DashboardScreen()
          : (abc == 1 ? const Chapterscreen() : const questionscreen()),
      bottomNavigationBar:
          BottomNavigationBar(currentIndex: abc, onTap: onTabTapped, items: [
        BottomNavigationBarItem(
          icon: Image.asset(home),
          label: 'Home',
        ),
        BottomNavigationBarItem(icon: Image.asset(book), label: 'Result'),
        BottomNavigationBarItem(icon: Image.asset(history), label: 'Profile'),
        BottomNavigationBarItem(
            icon: Image.asset(statistics), label: 'Questions'),
        BottomNavigationBarItem(icon: Image.asset(more), label: 'Questions'),
      ]),
    );
  }
}
