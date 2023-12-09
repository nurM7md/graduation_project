import 'package:final_project/controllers/home_contoller/Home_Contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_button_category.dart';
import 'custom_image_category.dart';

class CeramicCategory extends GetView<HomeController> {
  const CeramicCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageCategory(
            titleCategory: 'Ceramic', images: controller.ceramicImages),
        const SizedBox(height: 30),
        CustomButtonCategory(
            title: 'floor',
            onPressed: () async {
              await controller.uploadImageCeramicFloor();
            }),
        const SizedBox(height: 20),
        CustomButtonCategory(
            title: 'walls',
            onPressed: () {
              controller.uploadImageCeramicWalls();
            }),
        const SizedBox(height: 20),
        const Divider(height: 1, color: Colors.grey, thickness: .6),
        const SizedBox(height: 30),
      ],
    );
  }
}
