// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:map/Utility/Constance.dart';
import 'package:map/View/OTPscreen.dart';
import 'package:map/Widgets/Commonbutton.dart';
import 'package:map/Widgets/Commontextfield.dart';

class Loginscreen extends StatelessWidget {
  //const Loginscreen({super.key});
  final _key = GlobalKey<FormState>();

  final TextEditingController mobilecontroller = TextEditingController();

  Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        // alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Image.asset(
              bgimage,
              fit: BoxFit.fill,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                logo,
                height: 100,
              ),
              Image.asset(
                quizBook,
                height: 100,
                width: 200,
              ),
              Form(
                key: _key,
                child: CommonTextFormField(
                  autofocus: true,
                  abc: mobilecontroller,

                  ismobilenumber: true,
                  label: 'Mobile Number',
                  hint: 'Enter Your Mobile Number',
                  // prefixtext: '+91',
                  textInputType: TextInputType.number,
                  errormessage: 'Enter Valid Mobile Number',
                  formatter: [mobilenumerformatter, mobilelengthformatter],
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: Commonbutton(
          Button: () async {
            if (_key.currentState!.validate()) {
              final mobiledata = mobilecontroller.text;
              Get.to(() => OTPscreen(
                    mobile: mobiledata,
                  ));
            }
          },
          text: 'Send OTP'),
    );
  }
}
