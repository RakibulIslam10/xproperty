
import 'package:flutter/cupertino.dart';

import '../utils/responsive_layout.dart';
import 'find_map_mobile_layout_screen.dart';

class FindMapScreen extends StatelessWidget {
  const FindMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: FindMapMobileLayoutScreen(),
    );
  }
}
