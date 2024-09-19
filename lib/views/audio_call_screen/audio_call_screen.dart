import 'package:flutter/cupertino.dart';
import '../utils/responsive_layout.dart';
import 'audio_call_mobile_layout_screen.dart';

class AudioCallScreen extends StatelessWidget {
  const AudioCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: AudioCallMobileLayoutScreen(),
    );
  }
}
