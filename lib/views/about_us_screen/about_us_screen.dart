import 'package:flutter/cupertino.dart';
import '../utils/responsive_layout.dart';
import 'about_us_mobile_layout_screen.dart';

class AboutUSScreen extends StatelessWidget {
  const AboutUSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: AboutUsMobileLayoutScreen(),
    );
  }
}
