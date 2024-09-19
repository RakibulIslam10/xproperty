import 'package:flutter/cupertino.dart';
import 'package:xpropertyapp/views/profile_screen/profile_mobile_screen_layout.dart';

import '../utils/responsive_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: ProfileMobileScreenLayout(),
    );
  }
}
