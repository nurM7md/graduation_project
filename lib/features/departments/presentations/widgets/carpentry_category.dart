import 'package:final_project/controllers/home_contoller/Home_Contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'custom_button_category.dart';
import 'custom_image_category.dart';

class CarpentryCategory extends GetView<HomeController> {
  const CarpentryCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
        CustomImageCategory(
            titleCategory: 'Carpentry',images: controller.carpentryImages),
      const SizedBox(height: 30),
      CustomButtonCategory(
        title: 'Windows', onPressed: () {
        controller.uploadImageWindows();
      },),
      const SizedBox(height: 20),
      CustomButtonCategory(
          title: 'Doors', onPressed: () {
        controller.uploadImageDoors();
      }),
      const SizedBox(height: 20),
      //const Divider(height: 1, color: Colors.white, thickness: .6),
      //const SizedBox(height: 20),
    ],);
  }
}
