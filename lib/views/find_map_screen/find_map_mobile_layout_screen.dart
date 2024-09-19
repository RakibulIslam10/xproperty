import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../routes/routes.dart';
import '../../widgets/background_widget/background_widget.dart';
import '../../widgets/common/custom_search_field_widget.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/list_card_widget.dart';
import '../../widgets/listing_data.dart';
import '../res/assets_res.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';
import '../utils/size.dart';

class FindMapMobileLayoutScreen extends StatelessWidget {
  const FindMapMobileLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return BackgroundWidget(
      containerOpacity: 00,
      backgroundImg: AssetsRes.mmap,
      content: Padding(
        padding: EdgeInsets.only(
          left: Dimensions.paddingSize * 0.6,
          right: Dimensions.paddingSize * 0.6,
          top: Dimensions.paddingSize * 2.5,
          bottom: Dimensions.paddingSize,
        ),
        child: Column(
          mainAxisAlignment: mainSpaceBet,
          children: [
            _searchField(),
            _recommendedListWidget(),
          ],
        ),
      ),
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
        ));
  }

  _recommendedListWidget() {
    return SizedBox(
      height: Dimensions.heightSize * 8,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ListCustomDataList.productsDetails2.length,
        itemBuilder: (context, index) {
          final myData = ListCustomDataList.productsDetails2[index];
          return _listCardWidget(myData);
        },
      ),
    );
  }

  _listCardWidget(Map<String, dynamic> myData) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.newsScreen);
      },
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
}
