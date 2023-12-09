import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../controllers/home_contoller/Home_Contoller.dart';

class CustomButtonCategory extends GetView<HomeController>  {
  const CustomButtonCategory(
      {super.key, required this.title, this.onPressed});

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text(
          title,
          style: TextStyle(
              color: Colors.grey, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        MaterialButton(
          onPressed: onPressed,
          child: Container(
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              width: double.infinity,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'upload image',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const Icon(
                    Icons.upload,
                    color: Colors.grey,
                  ),
                ],
              )),
        )
      ],
    );
  }
}
