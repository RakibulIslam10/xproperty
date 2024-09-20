import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../routes/routes.dart';
import '../../widgets/common/custom_search_field_widget.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/custom_app_bar_widget.dart';
import '../../widgets/custom_circular_container_widget.dart';
import '../../widgets/grid_card_widget.dart';
import '../../widgets/list_card_widget.dart';
import '../../widgets/listing_data.dart';
import '../../widgets/section_header_widget.dart';
import '../drawer_menu_screen/drawer_menu_mobile_layout_screen.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';

class DashboardMobileScreenLayout extends StatelessWidget {
  DashboardMobileScreenLayout({super.key});

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(),
      endDrawer: MyDrawerMenu(),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(context) {
    return Stack(
      children: [
        _circularContainers(),
        Padding(
          padding: EdgeInsets.all(Dimensions.paddingSize * 0.5),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                _searchField(),
                _sectionHeader(),
                _gridViewCardWidget(),
                _imageSliderWidget(),
                _sectionHeader2(),
                _listCardWidget()
              ],
            ),
          ),
        ),
      ],
    );
  }

  _circularContainers() {
    return const Stack(
      children: [
        CustomCircularContainer(
          top: 0,
          left: -10,
          size: 25,
        ),
        CustomCircularContainer(
          top: 0,
          left: 375,
          size: 30,
        ),
        CustomCircularContainer(
          top: 490,
          left: 370,
          size: 37,
        ),
        CustomCircularContainer(
          top: 560,
          left: -20,
          size: 50,
        ),
      ],
    );
  }

  _listCardWidget() {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: ListCustomDataList.productsDetails2.length,
      itemBuilder: (context, index) {
        final myData = ListCustomDataList.productsDetails2[index];
        return _listCardItems(myData);
      },
    );
  }

  _listCardItems(Map<String, dynamic> myData) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Dimensions.heightSize * 0.1,
      ),
      child: Card(
        color: CustomColor.whiteColor,
        elevation: 4,
        child: ListCardItems(
          title: myData['title'],
          imageUrl: myData["imageUrl"],
          subTitle: myData["subTitle"],
          title2: myData["title2"],
          subTitle2: myData["subTitle2"],
        ),
      ),
    );
  }

  _gridViewCardWidget() {
    return SizedBox(
      height: Dimensions.heightSize * 16,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, mainAxisExtent: 165),
        itemCount: GridCustomDataList.productsDetails.length,
        itemBuilder: (context, index) {
          final myData = GridCustomDataList.productsDetails[index];
          return _gridCardWidget(myData);
        },
      ),
    );
  }

  _imageSliderWidget() {
    return Padding(
      padding: EdgeInsets.only(top: Dimensions.heightSize),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: Dimensions.heightSize * 13,
            width: double.infinity,
            child: _sliderImageList(),
          ),
          _pageIndicatorWidget(),
        ],
      ),
    );
  }

  _sliderImageList() {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.detailsScreen);
      },
      child: PageView(
        controller: _controller,
        children: [
          Padding(
            padding: EdgeInsets.all(Dimensions.marginSizeHorizontal * 0.15),
            child: CustomImageWidget(
              path: Assets.background.sliderImage.path,
              borderRadius: BorderRadius.circular(15),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(Dimensions.marginSizeHorizontal * 0.15),
            child: CustomImageWidget(
              path: Assets.background.sliderImage.path,
              borderRadius: BorderRadius.circular(15),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(Dimensions.marginSizeHorizontal * 0.15),
            child: CustomImageWidget(
              path: Assets.background.sliderImage.path,
              borderRadius: BorderRadius.circular(15),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  _pageIndicatorWidget() {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.heightSize * 1.4),
      child: SmoothPageIndicator(
        controller: _controller,
        count: 6,
        effect: const ScaleEffect(
          activeDotColor: CustomColor.whiteColor,
          strokeWidth: 10,
          spacing: 16,
          scale: 1.8,
          dotHeight: 5,
          dotWidth: 5,
          dotColor: CustomColor.whiteColor,
        ),
      ),
    );
  }

  _gridCardWidget(Map<String, dynamic> myData) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.detailsScreen);
      },
      child: GridCardWidget(
        title: myData["title"],
        imageUrl: myData["imageUrl"],
        subTitle: myData["subTitle"],
        title2: myData["title2"],
        subTitle2: myData["subTitle2"],
      ),
    );
  }

  _sectionHeader() {
    return SectionHeader(
      title: Strings.latestProject,
      onTapSeeAll: () {
        Get.toNamed(Routes.newsBlogScreen);
      },
    );
  }

  _sectionHeader2() {
    return SectionHeader(
      title: Strings.propertiesNearYou,
      onTapSeeAll: () {
        Get.toNamed(Routes.propertyScreen);
      },
    );
  }

  _searchField() {
    return Padding(
      padding: EdgeInsets.only(
          bottom: Dimensions.buttonHeight * 0.1,
          top: Dimensions.heightSize * 0.2),
      child: CustomSearchField(
        hintText: Strings.findRentSaleBuyHome,
        suffixIcon: GestureDetector(
          onTap: () {
            Get.toNamed(Routes.filtersScreen);
          },
          child: CustomImageWidget(
            path: Assets.icons.iconSort,
            height: Dimensions.heightSize * 1.2,
          ),
        ),
        prefixIcon: CustomImageWidget(
          path: Assets.icons.iconSearch,
          height: Dimensions.heightSize * 0.2,
        ),
      ),
    );
  }
}
