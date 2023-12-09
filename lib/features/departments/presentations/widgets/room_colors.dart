import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../controllers/home_contoller/Home_Contoller.dart';
import 'custom_button_category.dart';
import 'custom_image_category.dart';

class RoomColors extends GetView<HomeController> {
  const RoomColors({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageCategory(
            titleCategory: 'Room Colors', images: controller.roomColorImages
        ),
        const SizedBox(height: 30),
        CustomButtonCategory(
            title: 'Master Room',
            onPressed: () {
              controller.uploadImageMaterRoomcolor();
            }),
        const SizedBox(height: 20),
        CustomButtonCategory(
            title: 'Salon',
            onPressed: () {
              controller.uploadImageSalonColor();
            }),
        const SizedBox(height: 20),
        CustomButtonCategory(
            title: 'Kitchen',
            onPressed: () {
              controller.uploadImageKitchenColor();
            }),
        const SizedBox(height: 20),
        CustomButtonCategory(
            title: 'Kids Room',
            onPressed: () {
              controller.uploadImageKidsRomColor();
            }),
        const SizedBox(height: 20),
        CustomButtonCategory(
            title: 'Other Room',
            onPressed: () {
              controller.uploadImageOtherRoomColor();
            }),
        const SizedBox(height: 20),
        const Divider(height: 1, color: Colors.grey, thickness: .6),
        const SizedBox(height: 30),
      ],
    );
  }
}
