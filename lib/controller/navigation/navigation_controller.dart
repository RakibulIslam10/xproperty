import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../views/dashboard_screen/dashboard_screen.dart';
import '../../views/dicover_screen/discover_screen.dart';
import '../../views/inbox_screen/inbox_screen.dart';
import '../../views/profile_screen/profile_screen.dart';

class BottomNavBarController extends GetxController {
  RxInt currentIndex = 0.obs;

  final List<Widget> screens = const [
    DashboardScreen(),
    DiscoverScreen(),
    InboxScreen(),
    ProfileScreen(),
  ];

  void changeIndex(int index) {
    currentIndex.value = index;
  }

  void backToHome() {
    changeIndex(0);
  }
}
