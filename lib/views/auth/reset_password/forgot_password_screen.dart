import 'package:flutter/cupertino.dart';

import '../../utils/responsive_layout.dart';
import 'forgot_password_mobile_layout_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ResponsiveLayout(
      mobileScaffold: ForgotPasswordMobileLayoutScreen(),
    );
  }
}