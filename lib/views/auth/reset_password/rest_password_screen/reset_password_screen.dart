import 'package:flutter/cupertino.dart';
import 'package:xproperty/views/auth/reset_password/rest_password_screen/reset_password_mobile_layout_screen.dart';
import '../../../utils/responsive_layout.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileScaffold: ResetPasswordMobileLayoutScreen(),
    );
  }
}
