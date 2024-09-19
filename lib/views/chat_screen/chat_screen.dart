import 'package:flutter/cupertino.dart';
import '../utils/responsive_layout.dart';
import 'chat_mobile_screen_layout.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: ChatMobileScreenLayout(),
    );
  }
}
