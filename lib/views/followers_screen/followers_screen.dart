import 'package:flutter/cupertino.dart';
import '../utils/responsive_layout.dart';
import 'followers_mobile_layout_screen.dart';

class FollowersScreen extends StatelessWidget {
  const FollowersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ResponsiveLayout(
      mobileScaffold: FollowersMobileLayoutScreen(),
    );
  }
}
