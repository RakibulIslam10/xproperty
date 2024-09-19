part of '../routes/routes.dart';

class RoutePageList {
  static var list = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.onboardScreen,
      page: () => const OnboardScreen(),
    ),
    GetPage(
      name: Routes.navigationScreen,
      page: () => BottomNavScreen(),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => const SignUpScreen(),
    ),
    GetPage(
      name: Routes.welcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: Routes.signInScreen,
      page: () => const SignInScreen(),
    ),
    GetPage(
      name: Routes.emailVerificationScreen,
      page: () => const EmailVerificationScreen(),
    ),
    GetPage(
      name: Routes.confirmScreen,
      page: () => const ConfirmScreen(),
    ),
    GetPage(
      name: Routes.dashboardScreen,
      page: () => const DashboardScreen(),
    ),
    GetPage(
      name: Routes.notificationScreen,
      page: () => const NotificationScreen(),
    ),
    GetPage(
      name: Routes.chatScreen,
      page: () => const ChatScreen(),
    ),
    GetPage(
      name: Routes.newsScreen,
      page: () => const NewsScreen(),
    ),
    GetPage(
      name: Routes.propertyScreen,
      page: () => const PropertiesScreen(),
    ),
    GetPage(
      name: Routes.newsBlogScreen,
      page: () => const NewsBlogScreen(),
    ),
    GetPage(
      name: Routes.detailsScreen,
      page: () => const DetailsScreen(),
    ),
    GetPage(
      name: Routes.followersScreen,
      page: () => const FollowersScreen(),
    ),
    GetPage(
      name: Routes.followingScreen,
      page: () => const FollowingScreen(),
    ),
    GetPage(
      name: Routes.aboutUSScreen,
      page: () => const AboutUSScreen(),
    ),
    GetPage(
      name: Routes.termsAndPoliciesScreen,
      page: () => const TermsAndPoliciesScreen(),
    ),
    GetPage(
      name: Routes.contactUsScreen,
      page: () => const ContactUsScreen(),
    ),
    GetPage(
      name: Routes.forgotPasswordScreen,
      page: () => const ForgotPasswordScreen(),
    ),
    GetPage(
      name: Routes.otpVerificationScreen,
      page: () => const OtpVerificationScreen(),
    ),
    GetPage(
      name: Routes.agentsScreen,
      page: () => const AgentsScreen(),
    ),
    GetPage(
      name: Routes.agentsDetailsScreen,
      page: () => const AgentsDetailsScreen(),
    ),
    GetPage(
      name: Routes.filtersScreen,
      page: () => const FiltersScreen(),
    ),
    GetPage(
      name: Routes.dowerMenuScreen,
      page: () =>  MyDrawerMenu(),
    ),
    GetPage(
      name: Routes.audioCallScreen,
      page: () => const AudioCallScreen(),
    ),
    GetPage(
      name: Routes.findMapScreen,
      page: () => const FindMapScreen(),
    ),
    GetPage(
      name: Routes.addPropertyScreen,
      page: () => const AddPropertyScreen(),
    ),
    GetPage(
      name: Routes.resetPasswordScreen,
      page: () => const ResetPasswordScreen(),
    ),
    GetPage(
      name: Routes.congratulationScreen,
      page: () => const CongratulationsScreen(),
    ),
    GetPage(
      name: Routes.changePasswordScreen,
      page: () => const ChangePasswordScreen(),
    ),
  ];
}
