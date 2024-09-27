import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../controller/onboard/onboading_controller.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../routes/routes.dart';
import '../../widgets/common/appbar/back_button.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';
import '../utils/size.dart';

class OnboardMobileScreenLayout extends StatelessWidget {
  final pageController = PageController();
  final _onboardingController = Get.put(OnboardingController());

  OnboardMobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return Column(
      children: [
        verticalSpace(Dimensions.marginSizeVertical * 1.5),
        _imageAndTitle(),
        _indicatorWidget(),
      ],
    );
  }

  _imageAndTitle() {
    return Expanded(
      child: PageView.builder(
        onPageChanged: (index) {
          if (index == _onboardingController.items.length - 1) {
            Get.offAllNamed(Routes.welcomeScreen);
          }
          if (index == 0) {
            _onboardingController.index.value = false;
          } else {
            _onboardingController.index.value = true;
          }
          debugPrint('$index');
          debugPrint('${_onboardingController.index.value}');
        },
        itemCount: _onboardingController.items.length,
        controller: pageController,
        itemBuilder: (context, index) {
          return _slideContent(index, context);
        },
      ),
    );
  }

  _appBarWidget() {
    return AppBar(
      toolbarHeight: Dimensions.heightSize * 6,
      backgroundColor: Colors.transparent,
      title: Padding(
        padding: EdgeInsets.only(
            left: Dimensions.paddingSize * 0.25,
            right: Dimensions.paddingSize * 0.5),
        child: Obx(
          () => Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              Visibility(
                visible: _onboardingController.index.value,
                child: BackButtonWidget(
                  onTap: () {
                    final currentPageIndex = pageController.page?.toInt() ?? 0;
                    if (currentPageIndex > 0) {
                      pageController.animateToPage(
                        currentPageIndex - 1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    }
                  },
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  _onboardingController.skipToWelcomeScreen();
                },
                child: const TitleHeading2Widget(
                  text: Strings.skip,
                  color: CustomColor.primaryLightColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _slideContent(index, context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: Dimensions.paddingSize * 0.6),
          child: CustomImageWidget(
            path: _onboardingController.items[index].image,
            height: MediaQuery.of(context).size.height * 0.35,
            width: double.infinity,
          ),
        ),
        TitleHeading2Widget(
          text: _onboardingController.items[index].title,
          fontSize: Dimensions.headingTextSize2,
          color: CustomColor.primaryLightColor,
        ),
      ],
    );
  }

  _indicatorWidget() {
    return Padding(
      padding: EdgeInsets.only(
        bottom: Dimensions.buttonHeight * 2.5,
        left: Dimensions.paddingSize * 2.5,
        right: Dimensions.paddingSize * 2.5,
      ),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          SmoothPageIndicator(
            controller: pageController, // PageController
            count: _onboardingController.items.length - 1,
            effect: WormEffect(
                activeDotColor: CustomColor.primaryLightColor,
                spacing: Dimensions.widthSize * 2,
                dotHeight: Dimensions.heightSize,
                dotWidth: Dimensions.heightSize),
          ),
          _nextArrowButton(),
        ],
      ),
    );
  }

  _nextArrowButton() {
    return GestureDetector(
      onTap: () {
        pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      },
      child: CircleAvatar(
          backgroundColor: CustomColor.primaryLightColor,
          radius: Dimensions.radius * 2.8,
          child: CustomImageWidget(path: Assets.icons.nextArrow)),
    );
  }
}
