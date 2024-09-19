import 'package:flutter/cupertino.dart';

import '../../utils/responsive_layout.dart';
import 'change_password_mobile_screen_layout.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: ChangePasswordMobileScreenLayout(),
    );
  }
}
