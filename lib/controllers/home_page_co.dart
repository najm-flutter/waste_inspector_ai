import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

abstract class HomePageCo extends GetxController {
  onTapCamera();
  onTapGellery();
}

class HomePageCoImp extends HomePageCo {
  File? myFile;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  onTapCamera() async {
    XFile? xfile = await ImagePicker().pickImage(source: ImageSource.camera);
    myFile = xfile != null ? File(xfile.path) : null;
    update() ;
    Get.back();
  }

  @override
  onTapGellery() async {
   XFile? xfile = await ImagePicker().pickImage(source: ImageSource.gallery);
    myFile = xfile != null ? File(xfile.path) : null;
    update() ;
    Get.back();
  } //for git file path
}
