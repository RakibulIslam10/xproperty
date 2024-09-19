import 'package:flutter/cupertino.dart';
import 'package:xpropertyapp/views/drawer_menu_screen/drawer_menu_mobile_layout_screen.dart';
import '../utils/responsive_layout.dart';

class DowerMenuScreen extends StatelessWidget {
  const DowerMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileScaffold: MyDrawerMenu()
    );
  }
}
