// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:map/Utility/Constance.dart';

class questionscreen extends StatefulWidget {
  const questionscreen({super.key});

  @override
  State<questionscreen> createState() => _questionscreenState();
}

class _questionscreenState extends State<questionscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(65),
                bottomRight: Radius.circular(65))),
        toolbarHeight: 150,
        title: const Column(
          children: [
            Text(
              'Chapter 1. Khorak kyathi male che?',
              style: TextStyle(color: white),
            ),
            Text(
              'Question 2/15',
              style: TextStyle(color: white),
            ),
            SizedBox(height: 40),
            Text(
              'Lassi,paratha ane paneer mishrit shak e kya rajyana lokono mukhya khorak che?',
              style: TextStyle(color: white),
            ),
          ],
        ),
        actions: [
          Image.asset(time_icon),
          const SizedBox(
            width: 10,
          ),
          const Text('00:50'),
        ],
        centerTitle: true,
        backgroundColor: Deeppurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 1000,
              child: OutlinedButton(
                style: const ButtonStyle(
                  alignment: Alignment.centerLeft,
                ),
                onPressed: () {},
                child: const Text(
                  'A:  Gujarat',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: 1000,
              child: OutlinedButton(
                style: const ButtonStyle(
                  alignment: Alignment.centerLeft,
                ),
                onPressed: () {},
                child: const Text(
                  'B:  Maharashtra',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: 1000,
              child: OutlinedButton(
                style: const ButtonStyle(
                  alignment: Alignment.centerLeft,
                ),
                onPressed: () {},
                child: const Text(
                  'C:  Rajasthan',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: 1000,
              child: OutlinedButton(
                style: const ButtonStyle(
                  alignment: Alignment.centerLeft,
                ),
                onPressed: () {},
                child: const Text(
                  'D: Punjab',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
