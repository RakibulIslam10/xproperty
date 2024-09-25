import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/navigation/navigation_controller.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../utils/custom_color.dart';

class BottomNavScreen extends StatelessWidget {
  BottomNavScreen({super.key});

  final _navBarController = Get.put(BottomNavBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(),
      bottomNavigationBar: _bottomNavWidget(),
    );
  }

  _bodyWidget() => Obx(
      () => _navBarController.screens[_navBarController.currentIndex.value]);

  _bottomNavWidget() {
    return Obx(
      () => Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 2.0,
            offset: const Offset(0.0, -0.0),
          ),
        ]),
        child: BottomNavigationBar(
          elevation: 20,
          backgroundColor: CustomColor.whiteColor,
          selectedItemColor: CustomColor.primaryLightColor,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: CustomColor.greyColor,
          unselectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          onTap: _navBarController.changeIndex,
          currentIndex: _navBarController.currentIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: CustomImageWidget(
                path: Assets.icons.ionicIosHome,
                color: _navBarController.currentIndex.value == 0
                    ? CustomColor.primaryLightColor
                    : CustomColor.greyColor,
              ),
              label: Strings.home,
            ),
            BottomNavigationBarItem(
              icon: CustomImageWidget(
                path: Assets.icons.buildin,
                color: _navBarController.currentIndex.value == 1
                    ? CustomColor.primaryLightColor
                    : CustomColor.greyColor, // Call getIconColor with index 1
              ),
              label: Strings.discover,
            ),
            BottomNavigationBarItem(
              icon: CustomImageWidget(
                path: Assets.icons.iconChat,
                color: _navBarController.currentIndex.value == 2
                    ? CustomColor.primaryLightColor
                    : CustomColor.greyColor,
              ),
              label: Strings.inbox,
            ),
            BottomNavigationBarItem(
              icon: CustomImageWidget(
                path: Assets.icons.iconProfile,
                color: _navBarController.currentIndex.value == 3
                    ? CustomColor.primaryLightColor
                    : CustomColor.greyColor,
              ),
              label: Strings.profile,
            ),
          ],
        ),
      ),
    );
  }
}
