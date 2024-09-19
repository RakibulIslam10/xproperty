import 'package:flutter/cupertino.dart';
import 'package:xpropertyapp/views/contact_us_screen/contact_us_mobile_layout_screen.dart';

import '../utils/responsive_layout.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: ContactUsMobileLayoutScreen(),
    );
  }
}
