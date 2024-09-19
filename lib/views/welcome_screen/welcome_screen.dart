import 'package:flutter/cupertino.dart';
import 'package:xpropertyapp/views/welcome_screen/welcome_mobile_screen_layout.dart';

import '../utils/responsive_layout.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: WelcomeHomeMobileScreenLayout(),
    );
  }
}
