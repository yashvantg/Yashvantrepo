//import 'dart:ffi';
// ignore_for_file: file_names, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:map/Controller/Image_controller.dart';
import 'package:map/Controller/sign_up_controller.dart';
import 'package:map/Utility/Constance.dart';
import 'package:map/Utility/Emailutility.dart';
import 'package:map/View/Bottomnavigationbar.dart';
import 'package:map/Widgets/CommonAppbar.dart';
import 'package:map/Widgets/CommonDropDown.dart';
import 'package:map/Widgets/Commonbutton.dart';
import 'package:map/Widgets/Commontextfield.dart';

String selectdate = '';
String formateddates = '';
TextEditingController xyz = TextEditingController();

String selectedvalue = '1';
String selectedvalue1 = '1';
String selectedvalue2 = '1';

// ignore: must_be_immutable
class Signupscreen extends StatefulWidget {
  Signupscreen({super.key, required this.mobileNo});
  String mobileNo;

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  final PhotoController photocontroller = Get.put(PhotoController());

  final SignUpController signUpController = Get.put(SignUpController());

  final Key = GlobalKey<FormState>();

  final SignUpController _controller = Get.put(SignUpController());

  final TextEditingController mobilecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mobilecontroller.text = widget.mobileNo;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CommonAppbar(
            title: 'Update Profile',
            backgroundColor: white,
            centerTitle: true,
            elevation: 100,
            isbackarrow: true,
          )),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: Key,
            child: SizedBox(
              width: 500,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: 150,
                      height: 150,
                      child: GestureDetector(
                          onTap: photocontroller.pickImage,
                          child: Obx(
                            () {
                              return (photocontroller.selectedImage.value ==
                                      null)
                                  ? CircleAvatar(
                                      radius: 50,
                                      backgroundColor: Colors.grey,
                                      child: Image.asset(addPic))
                                  : CircleAvatar(
                                      radius: 50,
                                      backgroundImage: FileImage(
                                          photocontroller.selectedImage.value!),
                                    );
                            },
                          ))),
                  const SizedBox(
                    height: 10,
                  ),
                  CommonTextFormField(
                    firstname: true,
                    autofocus: true,
                    hint: 'Enter Name',
                    label: 'First Name',
                    textInputType: TextInputType.name,
                    errormessage: 'Enter Valid Text',
                    formatter: [textInputFormatter],
                  ),
                  CommonTextFormField(
                    lastname: true,
                    hint: 'Enter Name',
                    label: 'Last Name',
                    textInputType: TextInputType.name,
                    errormessage: 'Enter Valid Text',
                    formatter: [textInputFormatter],
                  ),
                  const CommonTextFormField(
                    isEmailvalid: true,
                    hint: 'Enter Email',
                    label: 'Email ID',
                    textInputType: TextInputType.emailAddress,
                    errormessage: 'Enter Valid Email ID',
                    formatter: [],
                  ),
                  CommonTextFormField(
                    abc: mobilecontroller,
                    ismobilenumber: true,
                    isread: true,
                    hint: 'Enter Number',
                    label: 'Mobile Number',
                    prefixtext: '+91',
                    textInputType: TextInputType.number,
                    errormessage: 'Enter Valid Mobile Number',
                    formatter: [mobilenumerformatter, mobilelengthformatter],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 70,
                        width: 190,
                        child: Obx(
                          () => CommonDropDown(
                            items: const ['Male', 'Female'],
                            value: _controller.selectedgender.value,
                            Onchange: (value) {
                              _controller.selectedgender(value);
                            },
                            hinttext: 'Select Gender',
                            labeltext: 'Gender',
                            validator: (Value) {
                              if (Value == null || Value.isEmpty) {
                                return 'Please Enter Your Genedr';
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      // InkWell(
                      //   onTap: () async {
                      //     DateTime? selectdate = await showDatePicker(
                      //       context: context,
                      //       initialEntryMode: DatePickerEntryMode.calendar,
                      //       firstDate: DateTime(01 - 01 - 2001),
                      //       lastDate: DateTime(31 - 12 - 3000),
                      //       initialDate: DateTime.now(),
                      //     );
                      //     if (selectdate != null) {
                      //       formateddates =
                      //           DateFormat('dd-MM-yyyy').format(selectdate);
                      //       setState(() {});
                      //     }
                      //   },
                      //   child: CommonTextFormField(
                      //       label: 'Birth Date',
                      //       textInputType: TextInputType.number,
                      //       formatter: []),
                      // ),
                      SizedBox(
                        height: 60,
                        width: 200,
                        child: Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(00, 00, 10, 00),
                            child: InkWell(
                              onTap: () {
                                Utility.showDatePickerDialog()
                                    .then((pickedDate) {
                                  if (pickedDate != null) {
                                    _controller.chnageBirthDate(
                                        "${pickedDate.toLocal()}"
                                            .split(' ')[0]);
                                  }
                                });
                              },
                              child: InputDecorator(
                                  decoration: const InputDecoration(
                                      labelText: 'BirthDate',
                                      labelStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 138, 31, 31))),
                                  child: Obx(() => Text(
                                        _controller.selectedBirthDate.value,
                                        maxLines: 1,
                                      ))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                    width: 400,
                    child: CommonDropDown(
                      Onchange: (value) {
                        _controller.selectdesignation(value);
                      },
                      items: const ['Teacher', 'Student'],
                      value: _controller.selectdesignation.value,
                      labeltext: 'Designation',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Designation';
                        }
                        return null;
                      },
                      hinttext: 'Select Designation',
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Commonbutton(
          Button: () async {
            if (Key.currentState!.validate()) {
              if (_controller.selectedBirthDate.value == 'Select Date') {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                    'Please Enter Your Birthdate',
                  ),
                  duration: Duration(seconds: 1),
                ));
              } else {
                Get.to(() => const Bottomnavigation());
              }
            }
          },
          text: 'Update'),
    );
  }
}
