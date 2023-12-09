import 'dart:io';

import 'package:flutter/material.dart';

class CustomBoxWidget extends StatelessWidget {

  const CustomBoxWidget(
  {
    super.key,
    required this.title,
    required this.type1,
    required this.type2,
    required this.imageList,
    this.image,
   // required this.onPressed
}
      );

  final String title;
  final String type1;
  final String type2;

  final List<String> imageList;
  final File? image;
  //final void Function() onPressed;


  @override
  Widget build(BuildContext context){
    return
      Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
       Container(
         decoration: const BoxDecoration(
           borderRadius:
           BorderRadiusDirectional.all(Radius.circular(10.0)),
         ),
         clipBehavior: Clip.antiAliasWithSaveLayer,
         child: Image(
           image: NetworkImage(imageList[0]),
           width: 70.0,
           height: 70.0,
           fit: BoxFit.cover,
         ),
       ),
        const SizedBox(
          width: 10.0,
        ),
        Container(
          decoration: const BoxDecoration(
            borderRadius:
            BorderRadiusDirectional.all(Radius.circular(10.0)),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child:Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image(
                image: NetworkImage(imageList[1]),
                width: 100.0,
                height: 100.0,
                fit: BoxFit.cover,
              ),
              Container(
                width: 100.0,
                color: Colors.black.withOpacity(0.5),
                padding: EdgeInsets.symmetric(
                  vertical: 10.0
                ),
                child: TextButton(
                  onPressed: () {

                  },
                  child: Container(
                     width: 200.0,
                     color: Colors.black.withOpacity(0.8),
                     padding: const EdgeInsets.symmetric(
                     vertical: 10.0,
                     horizontal: 10.0,
                  ),
                  child:  Text(
                           type1,
                           textAlign: TextAlign.center,
                           style: TextStyle(
                           color: Colors.pink,
                                           ),
                              ),

                ),
              ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}