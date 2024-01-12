// ignore_for_file: avoid_print, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Utility {
  static Future<DateTime?> showDatePickerDialog() async {
    DateTime? selectedDate;
    try {
      selectedDate = await showDatePicker(
        context: Get.context!,
        errorFormatText: 'Error occurred',
        cancelText: 'Close',
        confirmText: 'Select',
        errorInvalidText: 'Invalid text',
        fieldHintText: 'Hint text',
        fieldLabelText: 'Please select date',
        helpText: 'Help text',
        keyboardType: TextInputType.number,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023, 01, 01),
        lastDate: DateTime(2025, 01, 01),
      );
      if (selectedDate != null) {
        final formattedDate = DateFormat('dd/MM/yyyy').format(selectedDate);
        print(formattedDate);
        return selectedDate;
      }
      print(selectedDate.toString());
    } catch (e) {
      print(e.toString());
    }
    return selectedDate;
  }

  static bool isEmailValid(String email) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }
}
