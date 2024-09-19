import 'package:flutter/cupertino.dart';
import 'package:xpropertyapp/views/auth/reset_password/otp_verification_mobile_layout_screen.dart';

import '../../utils/responsive_layout.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: OtpVerificationMobileLayoutScreen(),
    );
  }
}