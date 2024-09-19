import 'package:flutter/cupertino.dart';

import '../utils/responsive_layout.dart';
import 'discover_mobile_screen_layout.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: DiscoverMobileScreenLayout(),
    );
  }
}
