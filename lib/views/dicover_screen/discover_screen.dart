import 'package:flutter/cupertino.dart';
import 'package:xpropertyapp/views/dicover_screen/discover_mobile_screen_layout.dart';

import '../utils/responsive_layout.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileScaffold: DiscoverMobileScreenLayout(),
    );
  }
}
