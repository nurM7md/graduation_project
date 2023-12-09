import 'package:final_project/core/resources/asset_managers.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../controllers/home_contoller/Home_Contoller.dart';

class CustomImageCategory extends GetView<HomeController> {
  const CustomImageCategory(
      {super.key, required this.titleCategory, required this.images});

  final String titleCategory;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleCategory,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      images[index],
                    )),
              )),
        ),
      ],
    );
  }
}
