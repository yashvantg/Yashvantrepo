// ignore: file_names

// ignore_for_file: file_names, duplicate_ignore

import 'dart:convert';
import 'dart:io';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class PhotoController extends GetxController {
  Rx<File?> selectedImage = Rx<File?>(null);

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      selectedImage.value = File(pickedFile.path);
    }
  }

  Future<void> uploadImage() async {
    if (selectedImage.value == null) return;

    // Replace 'YOUR_UPLOAD_URL' with the actual URL where you want to upload the image
    final uploadUrl = Uri.parse('YOUR_UPLOAD_URL');

    List<int> imageBytes = selectedImage.value!.readAsBytesSync();
    String base64Image = base64Encode(imageBytes);

    final response = await http.post(
      uploadUrl,
      body: {
        'image': base64Image,
      },
    );

    // Handle the response as needed
    // ignore: avoid_print
    print(response.body);
  }
}
