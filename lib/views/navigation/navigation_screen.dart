import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xpropertyapp/views/dashboard_screen/dashboard_screen.dart';
import 'package:xpropertyapp/views/dicover_screen/discover_screen.dart';
import 'package:xpropertyapp/views/inbox_screen/inbox_screen.dart';
import 'package:xpropertyapp/views/profile_screen/profile_screen.dart';
import 'package:xpropertyapp/views/utils/custom_color.dart';
import 'package:xpropertyapp/widgets/common/others/custom_image_widget.dart';
import '../../controller/navigation/navigation_controller.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';

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
      () => BottomNavigationBar(
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
    );
  }
}
