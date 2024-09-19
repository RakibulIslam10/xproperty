import 'package:flutter/cupertino.dart';

import '../utils/responsive_layout.dart';
import 'filters_mobile_screen_layout.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileScaffold: FiltersMobileScreenLayout(),
    );
  }
}
