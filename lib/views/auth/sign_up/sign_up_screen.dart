import 'package:flutter/cupertino.dart';
import 'package:xproperty/views/auth/sign_up/sign_up_mobile_screen_layout.dart';

import '../../utils/responsive_layout.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: SignUpMobileScreenLayout(),
    );
  }
}