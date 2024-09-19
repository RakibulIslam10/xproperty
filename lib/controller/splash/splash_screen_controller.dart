import 'package:get/get.dart';
import 'package:xpropertyapp/routes/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _goToScreen();
  }

  Future<void> _goToScreen() async {
    await Future.delayed(const Duration(seconds: 5));
    Get.offAllNamed(Routes.onboardScreen);
  }
}
