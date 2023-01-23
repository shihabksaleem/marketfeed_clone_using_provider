// ignore_for_file: file_names, non_constant_identifier_names, avoid_print

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ProviderModel extends ChangeNotifier {
  bool button1 = true;
  bool otpButton = true;
  bool pinputVisisble = false;
  Image? galImage;
  File? _image;
  int selectedTabIndex = 0;
  bool appBarVisible = true;

  void onOtpPressed() {
    pinputVisisble = !pinputVisisble;
    otpButton = false;
    notifyListeners();
  }

  void onSubmitOtpPressed() {
    button1 = !button1;
    notifyListeners();
  }

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image.path);
      _image = imageTemporary;
    } on PlatformException catch (e) {
      print('Failed to pick image : $e');
    }
    galImage = Image.file(_image!);
    notifyListeners();
  }

  void GalImageSelected() {
    pickImage();
  }

  onItemTapped(int index) {
    selectedTabIndex = index;
    selectedTabIndex == 1 || selectedTabIndex == 3
        ? appBarVisible = false
        : appBarVisible = true;
    notifyListeners();
  }
}
