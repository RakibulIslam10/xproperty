import 'package:flutter/cupertino.dart';
import 'package:xpropertyapp/views/auth/sign_up/email_verification_mobile_screen_layout.dart';

import '../../utils/responsive_layout.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: EmailVerificationMobileScreenLayout(),
    );
  }
}