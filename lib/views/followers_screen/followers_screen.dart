import 'package:flutter/cupertino.dart';
import 'package:xpropertyapp/views/followers_screen/followers_mobile_layout_screen.dart';

import '../utils/responsive_layout.dart';

class FollowersScreen extends StatelessWidget {
  const FollowersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ResponsiveLayout(
      mobileScaffold: FollowersMobileLayoutScreen(),
    );
  }
}
