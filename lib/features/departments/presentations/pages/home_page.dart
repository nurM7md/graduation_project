import 'package:final_project/controllers/home_contoller/Home_Contoller.dart';
import 'package:final_project/features/departments/presentations/widgets/carpentry_category.dart';
import 'package:final_project/features/departments/presentations/widgets/ceramic_cattegory.dart';
import 'package:final_project/features/departments/presentations/widgets/room_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text(
          'Home Run',
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('notification on');
            },
            icon: const Icon(
              Icons.notification_important,
            ),
          ),
          IconButton(
              onPressed: () {
                print('hello nur');
              },
              icon: const Icon(
                Icons.search,
              )),
        ],
        backgroundColor: Colors.black,
        elevation: 20.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
            child: ListView(children: const [
          CeramicCategory(),
          RoomColors(),
          CarpentryCategory(),
        ])),
      ),
    );
  }
}
