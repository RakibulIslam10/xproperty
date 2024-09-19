import 'package:flutter/cupertino.dart';
import 'package:xpropertyapp/views/filters_screen/filters_mobile_screen_layout.dart';

import '../utils/responsive_layout.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileScaffold: FiltersMobileScreenLayout(),
    );
  }
}
