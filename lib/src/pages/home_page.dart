import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_casestudy/src/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: homeController.increment, child: const Icon(Icons.add),) ,
      body: Center(child: GetBuilder<HomeController>(builder: (_) => Text("clicks: ${homeController.count}"))),
    );
  }
}