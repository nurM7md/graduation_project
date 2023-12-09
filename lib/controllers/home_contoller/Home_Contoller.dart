import 'dart:io';

import 'package:final_project/core/resources/asset_managers.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomeController extends GetxController {
  late List<String> ceramicImages;
  late List<String> roomColorImages;
  late List<String> carpentryImages;

  uploadImageCeramicFloor() async {
    await _pickImage();
  }

  uploadImageCeramicWalls() async {
    await _pickImage();
  }

  uploadImageMaterRoomcolor() async {
    await _pickImage();
  }

  uploadImageSalonColor() async {
    await _pickImage();
  }

  uploadImageKitchenColor() async {
    await _pickImage();
  }

  uploadImageKidsRomColor() async {
    await _pickImage();
  }

  uploadImageOtherRoomColor() async {
    await _pickImage();
  }

  uploadImageWindows() async {
    await _pickImage();
  }

  uploadImageDoors() async {
    await _pickImage();
  }

  late final picker;

  Future<void> _pickImage() async {
    try {
      // final ImagePicker picker = ImagePicker();
      // final LostDataResponse response = await picker.retrieveLostData();
      // if (response.isEmpty) {
      //   return;
      // }
      // final List<XFile>? files = response.files;
      // if (files != null) {
      //   // _handleLostFiles(files);
      // } else {
      //   // _handleError(response.exception);
      // }
      // final ImagePicker _picker = ImagePicker();
      // final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      //
      // if (image != null) {
      //   // Use the selected image
      //   File selectedImage = File(image.path);
      //   // Process or display the image as needed
      // } else {
      //   // User canceled the image selection
      // }
      File? _image;
      String? _imageUrl;

      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {}
    } catch (ex) {
      print(ex.toString());
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    ceramicImages = [
      AssetManagers.ceramicImg1,
      AssetManagers.ceramicImg2,
      AssetManagers.ceramicImg3,
      AssetManagers.ceramicImg4,
      AssetManagers.ceramicImg5,
      AssetManagers.ceramicImg6,
    ];
    roomColorImages = [
      AssetManagers.colorImg1,
      AssetManagers.colorImg2,
      AssetManagers.colorImg3,
      AssetManagers.colorImg4,
      AssetManagers.colorImg5,
      AssetManagers.colorImg6,
    ];
    carpentryImages = [
      AssetManagers.carpentryImg1,
      AssetManagers.carpentryImg2,
      AssetManagers.carpentryImg3,
      AssetManagers.carpentryImg4,
      AssetManagers.carpentryImg5,
      AssetManagers.carpentryImg6,
      AssetManagers.carpentryImg7,
    ];
  }
}
