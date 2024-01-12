import 'package:flutter/material.dart';
import 'package:map/Utility/Constance.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Deeppurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 200, width: 200, child: Image.asset(trophy)),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Congartulations',
              style: TextStyle(color: white),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'You have completed the test successfully',
              style: TextStyle(color: white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'STD 6,Chapter-1. Khorak Kyathi Male che?',
              style: TextStyle(color: white),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: () {},
                    child: const Text(
                      '10 Right',
                      style: TextStyle(color: white),
                    )),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {},
                    child: const Text(
                      '5 Wrong',
                      style: TextStyle(color: white),
                    )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 35,
              width: 300,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: white),
                  onPressed: () {},
                  child: const Text(
                    'See the Result',
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 35,
              width: 300,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: white),
                      backgroundColor: Colors.deepPurple),
                  onPressed: () {},
                  child: const Text(
                    'Start A New Quiz',
                    style: TextStyle(color: white),
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Give Feedback',
                  style: TextStyle(
                      decoration: TextDecoration.underline, color: white),
                ))
          ],
        ),
      ),
    );
  }
}
