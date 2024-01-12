import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:map/Utility/Constance.dart';
import 'package:map/View/Signup.dart';
import 'package:map/Widgets/CommonAppbar.dart';
import 'package:map/Widgets/Commonbutton.dart';
import 'package:map/Widgets/Commontextfield.dart';

class OTPscreen extends StatelessWidget {
  OTPscreen({super.key, required this.mobile});
  final String mobile;

  final keys = GlobalKey<FormState>();

  final TextEditingController otpcontroller = TextEditingController();

  final TextEditingController mobilecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mobilecontroller.text = mobile;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CommonAppbar(
            title: 'OTP Varification',
            backgroundColor: white,
            centerTitle: true,
            elevation: 100,
            isbackarrow: true,
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please Enter Your 4-digit OTP sent to Your Phone',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              child: Form(
                key: keys,
                child: CommonTextFormField(
                  abc: otpcontroller,
                  autofocus: true,
                  label: 'Enter OTP',
                  textInputType: TextInputType.number,
                  ismobilenumber: false,
                  OTPnumber: true,
                  errormessage: 'Enter Valid OTP',
                  formatter: [mobilenumerformatter, mobilelength],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Commonbutton(
                Button: () async {
                  if (keys.currentState!.validate()) {
                    Get.to(() => Signupscreen(mobileNo: mobile));
                  }
                },
                text: 'OK')
          ],
        ),
      ),
    );
  }
}
