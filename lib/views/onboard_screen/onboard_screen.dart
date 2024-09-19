import 'package:flutter/cupertino.dart';

import '../utils/responsive_layout.dart';
import 'onboard_mobile_screen_layout.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileScaffold: OnboardMobileScreenLayout(),
    );
  }
}
