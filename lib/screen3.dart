import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management2/controllers/counter_controller.dart';

class Screen3 extends StatelessWidget {
  Screen3({super.key});

  final controller = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 3'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                controller.counter.toString(),
                style: const TextStyle(fontSize: 30.0),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed('/screen1');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              child: const Text('Back to Screen 1'),
            )
          ],
        ),
      ),
    );
  }
}
