// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:map/Utility/Constance.dart';
import 'package:map/View/QuestionScreen.dart';
import 'package:map/Widgets/CommonAppbar.dart';

class Chapterscreen extends StatefulWidget {
  const Chapterscreen({super.key});

  @override
  State<Chapterscreen> createState() => _ChapterscreenState();
}

class _ChapterscreenState extends State<Chapterscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CommonAppbar(
              title: 'Science',
              backgroundColor: white,
              centerTitle: true,
              elevation: 100)),
      body: ItemList(),
    );
  }
}

class ItemList extends StatelessWidget {
  final List<Map<String, dynamic>> Items = [
    {
      'logo_index': '01',
      'logo_image': 'Images/normal_number-bg.png',
      'ch_name': 'Ch_1- Khorak kyathi mle che',
      'teacher_logo': 'Images/newton.jpeg',
      'teacher_name': 'Shailendrasinh Gohil',
      'question_no': 15,
      'min': 15,
    },
    {
      'logo_index': '02',
      'logo_image': 'Images/normal_number-bg.png',
      'ch_name': 'Ch_2- Aahar na ghatko',
      'teacher_logo': 'Images/newton.jpeg',
      'teacher_name': 'Rajesh Patel',
      'question_no': 15,
      'min': 15,
    },
    {
      'logo_index': '03',
      'logo_image': 'Images/normal_number-bg.png',
      'ch_name': 'Ch_3- Resathi kapad sudhi',
      'teacher_logo': 'Images/newton.jpeg',
      'teacher_name': 'Aayush Bhatt',
      'question_no': 15,
      'min': 15,
    },
    {
      'logo_index': '04',
      'logo_image': 'Images/normal_number-bg.png',
      'ch_name': 'Ch_4- Vastuona juth banavava',
      'teacher_logo': 'Images/newton.jpeg',
      'teacher_name': 'Rajini Shah',
      'question_no': 15,
      'min': 15,
    },
    {
      'logo_index': '05',
      'logo_image': 'Images/normal_number-bg.png',
      'ch_name': 'Ch_5- Padarthonu alagikaran',
      'teacher_logo': 'Images/newton.jpeg',
      'teacher_name': 'Jayeshbhai Makwana',
      'question_no': 15,
      'min': 15,
    },
    {
      'logo_index': '06',
      'logo_image': 'Images/normal_number-bg.png',
      'ch_name': 'Ch_6- aapni aaspass',
      'teacher_logo': 'Images/newton.jpeg',
      'teacher_name': 'Jalpa Dodiya',
      'question_no': 15,
      'min': 15,
    },
    {
      'logo_index': '07',
      'logo_image': 'Images/normal_number-bg.png',
      'ch_name': 'Ch_7- Pruthvi nu paribhraman',
      'teacher_logo': 'Images/newton.jpeg',
      'teacher_name': 'Aayush Andharia',
      'question_no': 15,
      'min': 15,
    },
  ];

  ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Items.length,
      itemBuilder: (context, index) {
        final item = Items[index];

        return Customitem(
          Logoindex: item['logo_index'],
          Logoimage: item['logo_image'],
          Ch_name: item['ch_name'],
          Teacherlogo: item['teacher_logo'],
          Teachername: item['teacher_name'],
          Question_no: item['question_no'],
          Minute: item['min'],
        );
      },
    );
  }
}

class Customitem extends StatelessWidget {
  final String Logoindex;
  final String Logoimage;
  final String Ch_name;
  final String Teacherlogo;
  final String Teachername;
  final int Question_no;
  final int Minute;

  const Customitem(
      {super.key,
      required this.Logoindex,
      required this.Logoimage,
      required this.Ch_name,
      required this.Teacherlogo,
      required this.Teachername,
      required this.Question_no,
      required this.Minute});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Get.to(() => questionscreen());
          },
          child: Card(
            child: ListTile(
                leading: CircleAvatar(
                  radius: 50,
                  backgroundImage: const AssetImage(limage),
                  child: Text(
                    Logoindex,
                    style: const TextStyle(color: white),
                  ),
                ),
                title: Text(Ch_name),
                subtitle: Column(children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(Teacherlogo),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(Teachername),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          height: 30, width: 30, child: Image.asset(Que_image)),
                      Text('Question: $Question_no'),
                      const SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                          height: 30, width: 30, child: Image.asset(time_icon)),
                      Text('Minute: $Minute')
                    ],
                  )
                ])),
          ),
        ),
      ),
    );
  }
}
