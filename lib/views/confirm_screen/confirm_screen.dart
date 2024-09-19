import 'package:flutter/cupertino.dart';
import 'package:xpropertyapp/views/confirm_screen/confirm_mobile_screen_layout.dart';

import '../utils/responsive_layout.dart';

class ConfirmScreen extends StatelessWidget {
 const ConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: ConfirmMobileScreenLayout(),
    );
  }
}
