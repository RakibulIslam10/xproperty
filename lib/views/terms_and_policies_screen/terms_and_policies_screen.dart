import 'package:flutter/cupertino.dart';
import 'package:xpropertyapp/views/terms_and_policies_screen/terms_and_policies_mobile_layout_screen.dart';

import '../utils/responsive_layout.dart';

class TermsAndPoliciesScreen extends StatelessWidget {
  const TermsAndPoliciesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: TermsAndPoliciesMobileLayoutScreen(),
    );
  }
}