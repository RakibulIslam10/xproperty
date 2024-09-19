import 'package:flutter/cupertino.dart';
import '../utils/responsive_layout.dart';
import 'notifications_mobile_screen_layout.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: NotificationsMobileScreenLayout(),
    );
  }
}
