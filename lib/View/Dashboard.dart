// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:map/Controller/dashboardcontroller.dart';
import 'package:map/View/Chapterscreen.dart';
//import 'package:stu_error/dashboardcontroller.dart';

class DashboardScreen extends StatelessWidget {
  final DashboardController _controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Standard'),
        backgroundColor: Colors.white, // Customize the color here
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Obx(
            () => ListView.separated(
                separatorBuilder: (_, index) => const SizedBox(height: 30),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: _controller.standards.length,
                itemBuilder: (_, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(() => Chapterscreen());
                    },
                    child: Container(
                      height: 200,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            const BoxShadow(
                              blurRadius: 5.0,
                            ),
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Standard ${_controller.standards[index].std}',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.purple,
                                  ),
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(5),
                                  child: const Text(
                                    'New',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Divider(
                              color: Colors.grey,
                              height: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: ListView.separated(
                                separatorBuilder: (_, index1) => const SizedBox(
                                      width: 20,
                                    ),
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                physics: const BouncingScrollPhysics(),
                                itemCount:
                                    _controller.standards[index].subject.length,
                                itemBuilder: (_, index1) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 30,
                                          backgroundImage: Image.asset(
                                                  _controller.standards[index]
                                                      .subject[index1].img)
                                              .image,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          _controller.standards[index]
                                              .subject[index1].subjectName,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          ))
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
