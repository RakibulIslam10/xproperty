import 'package:flutter/cupertino.dart';
import '../utils/responsive_layout.dart';
import 'agents_mobile_layout_screen.dart';

class AgentsScreen extends StatelessWidget {
  const AgentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: AgentsMobileLayoutScreen(),
    );
  }
}
