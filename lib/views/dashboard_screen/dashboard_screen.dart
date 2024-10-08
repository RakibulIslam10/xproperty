import 'package:flutter/cupertino.dart';
import '../utils/responsive_layout.dart';
import 'dashboard_mobile_screen_layout.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileScaffold: DashboardMobileScreenLayout(),
    );
  }
}
