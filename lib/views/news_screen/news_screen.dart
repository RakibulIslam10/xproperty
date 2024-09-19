import 'package:flutter/material.dart';
import '../utils/responsive_layout.dart';
import 'news_mobile_layout_screen.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: NewsMobileLayoutScreen(),
    );
  }
}
