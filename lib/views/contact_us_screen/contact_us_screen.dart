import 'package:flutter/cupertino.dart';

import '../utils/responsive_layout.dart';
import 'contact_us_mobile_layout_screen.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: ContactUsMobileLayoutScreen(),
    );
  }
}
