import 'package:flutter/cupertino.dart';
import 'package:xproperty/views/auth/sign_in/sign_in_mobile_screen_layout.dart';

import '../../utils/responsive_layout.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ResponsiveLayout(
      mobileScaffold: SignInMobileScreenLayout(),
    );
  }
}