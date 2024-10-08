import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../widgets/common/buttons/call_and_message_dual_button_widget.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/text_lebels/title_heading1_widget.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../widgets/common/title_sub_title_widget.dart';
import '../../widgets/card/list_card_widget.dart';
import '../../widgets/listing_data.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';
import '../utils/size.dart';

class DetailsMobileLayoutScreen extends StatelessWidget {
  DetailsMobileLayoutScreen({super.key});

  final List<String> imageList = [
    Assets.background.house.path,
    Assets.background.house.path,
    Assets.background.house.path,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              _imageAndTitleWidget(),
              _filterBoxWidget(),
              _othersWidget(),
            ],
          ),
          _backButtonAndTitle(),
        ],
      ),
    );
  }

  _othersWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSize * 0.6),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          _descriptionWidget(),
          _slidePhotosWidget(),
          _propertyDetails(),
          _locationMapWidget(),
          TitleHeading2Widget(
            text: Strings.contactUs,
            fontSize: Dimensions.headingTextSize2,
          ),
          Column(
            crossAxisAlignment: crossCenter,
            children: [
              _logoWidget(),
              _titleAndSubTitleWidget(),
              _buttonWidget(),
              _recommendedListWidget()
            ],
          ),
        ],
      ),
    );
  }

  _backButtonAndTitle() {
    return Padding(
      padding: EdgeInsets.all(Dimensions.paddingSize),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          verticalSpace(Dimensions.marginSizeVertical * 1.2),
          _backButtonWidget(),
          verticalSpace(Dimensions.marginSizeVertical * 2),
          TitleSubTitleWidget(
            title: Strings.rangoHouse,
            titleColor: CustomColor.whiteColor,
            subTitle: Strings.newYorkUasUSA,
            subTitleColor: CustomColor.whiteColor.withOpacity(0.80),
          ),
        ],
      ),
    );
  }

  _recommendedListWidget() {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        Padding(
          padding: EdgeInsets.only(top: Dimensions.marginSizeVertical * 0.5),
          child: TitleHeading2Widget(
            text: Strings.recommended,
            fontSize: Dimensions.headingTextSize2,
          ),
        ),
        SizedBox(
          height: Dimensions.heightSize * 8,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ListCustomDataList.productsDetails2.length,
            itemBuilder: (context, index) {
              final myData = ListCustomDataList.productsDetails2[index];
              return _listCardWidget(myData);
            },
          ),
        ),
        verticalSpace(Dimensions.marginSizeVertical * 0.5)
      ],
    );
  }

  _locationMapWidget() {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        TitleHeading2Widget(
          text: Strings.location,
          fontSize: Dimensions.headingTextSize2,
        ),
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(Dimensions.radius * 4),
          ),
          child: CustomImageWidget(
            path: Assets.background.mapimage.path,
            height: Dimensions.heightSize * 16,
            width: double.infinity,
          ),
        ),
      ],
    );
  }

  _propertyDetails() {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: Dimensions.marginSizeVertical * 0.1),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          TitleHeading2Widget(
            text: Strings.propertyDetails,
            fontSize: Dimensions.headingTextSize2,
          ),
          verticalSpace(Dimensions.heightSize * 0.5),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: Dimensions.heightSize * 0.3),
            child: Row(
              children: [
                CustomImageWidget(path: Assets.icons.iconOkCheck),
                horizontalSpace(Dimensions.widthSize),
                const Text(Strings.startingPrice),
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: Dimensions.heightSize * 0.3),
            child: Row(
              children: [
                CustomImageWidget(path: Assets.icons.iconOkCheck),
                horizontalSpace(Dimensions.widthSize),
                const Text(Strings.startingPrice),
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: Dimensions.heightSize * 0.5),
            child: Row(
              children: [
                CustomImageWidget(path: Assets.icons.iconOkCheck),
                horizontalSpace(Dimensions.widthSize),
                const Text(Strings.startingPrice),
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: Dimensions.heightSize * 0.5),
            child: Row(
              children: [
                CustomImageWidget(path: Assets.icons.iconOkCheck),
                horizontalSpace(Dimensions.widthSize),
                const Text(Strings.startingPrice),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _imageAndTitleWidget() {
    return Column(
      crossAxisAlignment: crossStart,
      mainAxisAlignment: mainStart,
      children: [
        Padding(
            padding: EdgeInsets.only(
              bottom: Dimensions.heightSize,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(Dimensions.radius *2),
                bottomRight: Radius.circular(Dimensions.radius * 2),
              ),
              child: CustomImageWidget(
                path: Assets.background.house.path,
                height: Dimensions.heightSize * 18,
                width: double.infinity,
              ),
            )),
        _titleAndPriceWidget()
      ],
    );
  }

  _titleAndPriceWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.paddingSize * 0.8,
      ),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          TitleHeading2Widget(
            text: Strings.price,
            fontSize: Dimensions.headingTextSize3,
          ),
          TitleHeading1Widget(
            text: Strings.$496800,
            fontSize: Dimensions.headingTextSize1 * 0.95,
            color: CustomColor.primaryLightColor,
          ),
        ],
      ),
    );
  }

  _filterBoxWidget() {
    return Column(
      children: [
        Divider(
          color: CustomColor.greyColor.withOpacity(0.5),
        ),
        _filtersIcon(),
        Divider(
          color: CustomColor.greyColor.withOpacity(0.5),
        ),
      ],
    );
  }

  _descriptionWidget() {
    return TitleSubTitleWidget(
      title: Strings.descriptions,
      subTitle: Strings.description,
      subTitleFontSize: Dimensions.headingTextSize6,
      subTitleColor: CustomColor.primaryDarkColor,
    );
  }

  _slidePhotosWidget() {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: Dimensions.marginSizeVertical * 0.4),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          TitleHeading2Widget(
            text: Strings.photos,
            fontSize: Dimensions.headingTextSize2,
          ),
          verticalSpace(Dimensions.heightSize * 0.4),
          SizedBox(
              height: Dimensions.heightSize * 8,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: Dimensions.widthSize * 11,
                    margin: EdgeInsets.symmetric(
                        horizontal: Dimensions.marginSizeHorizontal * 0.2),
                    child: ClipRRect(
                      // Add ClipRRect
                      borderRadius: BorderRadius.circular(Dimensions.radius),
                      // Half of the width for a circle
                      child: Image.asset(
                        imageList[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ))
        ],
      ),
    );
  }

  _filtersIcon() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.marginSizeHorizontal * 2,
          vertical: Dimensions.marginSizeVertical * 0.15),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Column(
            children: [
              CustomImageWidget(path: Assets.icons.iconBed),
              TitleHeading2Widget(
                text: Strings.threeBeds,
                fontSize: Dimensions.headingTextSize5,
                fontWeight: FontWeight.normal,
              )
            ],
          ),
          Container(
            color: CustomColor.greyColor.withOpacity(0.9),
            height: Dimensions.heightSize * 2.8,
            width: 1.5,
          ),
          Column(
            children: [
              CustomImageWidget(path: Assets.icons.bath),
              TitleHeading2Widget(
                text: Strings.fiveBaths,
                fontSize: Dimensions.headingTextSize5,
                fontWeight: FontWeight.normal,
              )
            ],
          ),
          Container(
            color: CustomColor.greyColor.withOpacity(0.9),
            height: Dimensions.heightSize * 2.8,
            width: 1.5,
          ),
          Column(
            children: [
              CustomImageWidget(path: Assets.icons.iconKitchen),
              TitleHeading2Widget(
                text: Strings.kitchen,
                fontSize: Dimensions.headingTextSize5,
                fontWeight: FontWeight.normal,
              )
            ],
          ),
        ],
      ),
    );
  }

  _logoWidget() {
    return Padding(
      padding: EdgeInsets.only(
          top: Dimensions.heightSize, bottom: Dimensions.heightSize),
      child: CircleAvatar(
        backgroundImage: AssetImage(Assets.background.person.path),
        radius: Dimensions.radius * 6,
      ),
    );
  }

  _titleAndSubTitleWidget() {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.heightSize * 1.5),
      child: const TitleSubTitleWidget(
          isCenterText: true,
          subTitleColor: CustomColor.greyColor,
          titleColor: CustomColor.primaryLightColor,
          title: Strings.alexaConton,
          subTitle: Strings.takefulRealEstate),
    );
  }

  _buttonWidget() {
    return CallAndMessageDualButtonWidget(
        onCallPressed: () {}, onMessagePressed: () {});
  }

  _listCardWidget(Map<String, dynamic> myData) {
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

  _backButtonWidget() {
    return Padding(
      padding: EdgeInsets.all(Dimensions.paddingSize * 0.4),
      child: CircleAvatar(
        backgroundColor: CustomColor.primaryDarkColor.withOpacity(0.30),
        radius: Dimensions.radius * 1.6,
        child: InkWell(
          splashColor: Colors.transparent,
          onTap: () {
            Get.back();
          },
          child: CustomImageWidget(
            path: Assets.icons.backArrow,
            height: Dimensions.iconSizeDefault * 0.9,
          ),
        ),
      ),
    );
  }
}
