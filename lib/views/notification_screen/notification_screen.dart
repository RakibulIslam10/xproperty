import 'package:flutter/cupertino.dart';
import 'package:xpropertyapp/views/notification_screen/notifications_mobile_screen_layout.dart';
import '../utils/responsive_layout.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: NotificationsMobileScreenLayout(),
    );
  }
}
