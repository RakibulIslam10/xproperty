import 'package:flutter/cupertino.dart';
import 'package:xproperty/views/properties_screen/property_mobile_layout_screen.dart';

import '../utils/responsive_layout.dart';

class PropertiesScreen extends StatelessWidget {
  const PropertiesScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: PropertiesMobileLayoutScreen(),
    );
  }
}
