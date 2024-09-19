import 'package:get/get.dart';

class SliderController extends GetxController {
  final _sliderValue = 5000.0.obs; // Initial slider value

  double get sliderValue => _sliderValue.value;

  set sliderValue(double value) {
    _sliderValue.value = value;
  }
}