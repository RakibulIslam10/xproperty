import 'package:flutter/cupertino.dart';

import '../utils/responsive_layout.dart';
import 'agents_details_mobile_layout_screen.dart';

class AgentsDetailsScreen extends StatelessWidget {
  const AgentsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: AgentsDetailsMobileLayoutScreen(),
    );
  }
}
