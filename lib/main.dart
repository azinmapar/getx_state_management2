import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management2/screen1.dart';
import 'package:getx_state_management2/screen2.dart';
import 'package:getx_state_management2/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/screen1', page: () => Screen1()),
        GetPage(name: '/screen2', page: () => Screen2()),
        GetPage(name: '/screen3', page: () => Screen3()),
      ],
      initialRoute: '/screen1',
    );
  }
}

/**
 * ! Obx
 * * For rebuilding the widget with changed data (more explanation in [[./controllers/counter_controller.dart]]
 * $ Obx((){return widget})
 */
