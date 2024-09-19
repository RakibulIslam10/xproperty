import 'package:flutter/cupertino.dart';
import 'package:xpropertyapp/views/following_screen/following_mobile_layout_screen.dart';
import '../utils/responsive_layout.dart';

class FollowingScreen extends StatelessWidget {
  const FollowingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ResponsiveLayout(
      mobileScaffold: FollowingMobileLayoutScreen(),
    );
  }
}
