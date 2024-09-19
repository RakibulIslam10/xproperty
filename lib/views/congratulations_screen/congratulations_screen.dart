import 'package:flutter/cupertino.dart';

import '../utils/responsive_layout.dart';
import 'congratulations_mobile_layout_screen.dart';

class CongratulationsScreen extends StatelessWidget {
  const CongratulationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: CongratulationsMobileLayoutScreen(),
    );
  }
}
