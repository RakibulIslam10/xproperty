import 'package:flutter/cupertino.dart';
import 'package:xpropertyapp/views/audio_call_screen/audio_call_mobile_layout_screen.dart';

import '../utils/responsive_layout.dart';

class AudioCallScreen extends StatelessWidget {
  const AudioCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: AudioCallMobileLayoutScreen(),
    );
  }
}
