import 'package:flutter/cupertino.dart';
import 'package:xpropertyapp/views/about_us_screen/about_us_mobile_layout_screen.dart';

import '../utils/responsive_layout.dart';

class AboutUSScreen extends StatelessWidget {
  const AboutUSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: AboutUsMobileLayoutScreen(),
    );
  }
}
