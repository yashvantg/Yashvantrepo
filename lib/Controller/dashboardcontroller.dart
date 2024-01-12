import 'package:get/get.dart';
import 'package:map/Models/dashboardmode.dart';
import 'package:map/Utility/Constance.dart';

class DashboardController extends GetxController {
  final standards = <StandardModel>[
    StandardModel(
      std: 1,
      subject: [
        SubjectModel(subjectName: 'Gujarati', img: gujarati),
        SubjectModel(subjectName: 'Maths', img: maths),
        SubjectModel(subjectName: 'Social', img: social),
        SubjectModel(subjectName: 'Science', img: science),
        SubjectModel(subjectName: 'Hindi', img: hindi),
        SubjectModel(subjectName: 'Computer', img: computer),
        SubjectModel(subjectName: 'English', img: english),
      ],
    ),
    StandardModel(
      std: 2,
      subject: [
        SubjectModel(subjectName: 'Gujarati', img: gujarati),
        SubjectModel(subjectName: 'Maths', img: maths),
        SubjectModel(subjectName: 'Social', img: social),
        SubjectModel(subjectName: 'Science', img: science),
        SubjectModel(subjectName: 'Hindi', img: hindi),
        SubjectModel(subjectName: 'Computer', img: computer),
        SubjectModel(subjectName: 'English', img: english),
      ],
    ),
    StandardModel(
      std: 3,
      subject: [
        SubjectModel(subjectName: 'Gujarati', img: gujarati),
        SubjectModel(subjectName: 'Maths', img: maths),
        SubjectModel(subjectName: 'Social', img: social),
        SubjectModel(subjectName: 'Science', img: science),
        SubjectModel(subjectName: 'Hindi', img: hindi),
        SubjectModel(subjectName: 'Computer', img: computer),
        SubjectModel(subjectName: 'English', img: english),
      ],
    ),

    // Add more data as needed
  ].obs;
}
