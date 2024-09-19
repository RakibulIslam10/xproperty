import 'package:flutter/cupertino.dart';
import '../utils/responsive_layout.dart';
import 'confirm_mobile_screen_layout.dart';

class ConfirmScreen extends StatelessWidget {
 const ConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: ConfirmMobileScreenLayout(),
    );
  }
}
