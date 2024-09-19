import 'package:flutter/cupertino.dart';
import '../utils/responsive_layout.dart';
import 'add_property_mobile_layout_screen.dart';

class AddPropertyScreen extends StatelessWidget {
  const AddPropertyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ResponsiveLayout(
      mobileScaffold: AddPropertyMobileLayoutScreen(),
    );
  }
}
