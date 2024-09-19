import 'package:flutter/cupertino.dart';
import '../utils/responsive_layout.dart';
import 'following_mobile_layout_screen.dart';

class FollowingScreen extends StatelessWidget {
  const FollowingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ResponsiveLayout(
      mobileScaffold: FollowingMobileLayoutScreen(),
    );
  }
}
