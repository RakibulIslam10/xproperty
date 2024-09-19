import 'package:flutter/cupertino.dart';
import 'package:xpropertyapp/views/add_property_screen/add_property_mobile_layout_screen.dart';

import '../utils/responsive_layout.dart';

class AddPropertyScreen extends StatelessWidget {
  const AddPropertyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ResponsiveLayout(
      mobileScaffold: AddPropertyMobileLayoutScreen(),
    );
  }
}
