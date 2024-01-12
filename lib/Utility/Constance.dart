// ignore_for_file: constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const String bgimage = 'assets/images/bg.png';
const String logo = 'assets/images/Logo.png';
const String trophy = 'assets/images/trophy.png';
const String home = 'assets/images/home_active@2x.png';
const String history = 'assets/images/history_normal@2x.png';
const String more = 'assets/images/more_normal@2x.png';
const String statistics = 'assets/images/statistics_normal@2x.png';
const String book = 'assets/images/book_normal@2x.png';
const String limage = 'assets/images/normal_number_bg.png';
const String Timage = 'assets/images/newton.jpeg';
const String Que_image = 'assets/images/question_icon.png';
const String time_icon = 'assets/images/time_icon.png';
const String maths = 'assets/images/maths.png';
const String science = 'assets/images/science.jpeg';
const String social = 'assets/images/social.jpeg';
const String gujarati = 'assets/images/gujarati.jpeg';
const String english = 'assets/images/english.png';
const String hindi = 'assets/images/hindi.jpeg';
const String computer = 'assets/images/computer.jpeg';
const String addPic = 'assets/images/add_pic.png';
const String quizBook = 'assets/images/quiz_book.png';

const Color white = Colors.white;
const Color black = Colors.black;
const Color grey = Colors.grey;
const Color purple = Colors.purple;
const Color Deeppurple = Colors.deepPurple;

final mobilenumerformatter = FilteringTextInputFormatter.allow(RegExp('[0-9]'));

final LengthLimitingTextInputFormatter mobilelengthformatter =
    LengthLimitingTextInputFormatter(10);
final LengthLimitingTextInputFormatter mobilelength =
    LengthLimitingTextInputFormatter(04);

final textInputFormatter =
    FilteringTextInputFormatter.allow(RegExp('[a-z && A-Z]'));
