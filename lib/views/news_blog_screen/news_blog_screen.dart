import 'package:flutter/cupertino.dart';

import '../utils/responsive_layout.dart';
import 'news_blog_mobile_layout_screen.dart';

class NewsBlogScreen extends StatelessWidget {
  const NewsBlogScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: NewsBlogMobileLayoutScreen(),
    );
  }
}
