import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;

  void increment() {
    counter.value++;
  }
}

/**
 * ! Obs
 * * Obs works like update, it update wherever the data is read
 * $ var data = value.obs
 */
