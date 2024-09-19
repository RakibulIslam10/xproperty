import 'package:flutter/cupertino.dart';
import '../utils/responsive_layout.dart';
import 'inbox_mobile_screen_layout.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: InboxMobileScreenLayout(),
    );
  }
}
