import 'package:flutter/cupertino.dart';

import '../utils/responsive_layout.dart';
import 'details_mobile_layout_screen.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: DetailsMobileLayoutScreen(),
    );
  }
}
