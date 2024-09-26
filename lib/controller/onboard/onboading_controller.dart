import 'package:get/get.dart';
import '../../routes/routes.dart';
import '../../views/res/assets_res.dart';
import 'onboarding_info.dart';

class OnboardingController extends GetxController {

  RxBool index = false.obs;

  final items = [
    OnboardingInfo(
        title: "We Develop It For You", image: AssetsRes.onboardLogo1),
    OnboardingInfo(
      title: "We Care About Your Choice",
      image: AssetsRes.onboardLogo2,
    ),
    OnboardingInfo(
        title: "Take Your Place of Residence\nAccording to Your Choice",
        image: AssetsRes.onboardLogo3),
    OnboardingInfo(
        title: "Take Your Place of Residence\nAccording to Your Choice",
        image: AssetsRes.onboardLogo4),
    OnboardingInfo(
        title: "Take Your Place of Residence\nAccording to Your Choice",
        image: AssetsRes.onboardLogo4),
  ];

  void skipToWelcomeScreen() {
    Get.offAllNamed(Routes.welcomeScreen);
  }
}
