import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:interport/res/resources/colors.dart';
import 'package:interport/res/widgets/common_text_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    var spaceHeightMax = const SizedBox(
      height: 10,
    );
    var spaceHeightMin = const SizedBox(
      height: 5,
    );
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var appBarWidget = AppBar(
      centerTitle: true,
      backgroundColor: AppTheme.appBarColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_rounded,
          color: AppTheme.darkBlackColor,
        ),
      ),
      title: CommonTextWidget(
        text: "Profile",
        fontWeight: FontWeight.w700,
        fontSize: 18,
        color: AppTheme.darkBlackColor,
      ),
    );
    var profileWidget = Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppTheme.appBarColor,
            ),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(
                  Icons.person_outline_rounded,
                  size: 90,
                ),
              ),
            )),
        Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppTheme.appBarColor,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Icon(
                  Icons.camera_alt_rounded,
                  size: 16,
                  color: AppTheme.primaryColor,
                ),
              ),
            )),
      ],
    );
    var surveyorTextWidget = CommonTextWidget(
      text: "Surveyor",
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: AppTheme.greyColor,
    );
    var ratingBarWidget = Container(
      width: 125,
      height: 24,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: AppTheme.greySecondColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RatingBarIndicator(
            rating: 3.5,
            itemBuilder: (context, index) => const Icon(
              Icons.star_rounded,
              color: Color(0xffFFA000),
            ),
            itemCount: 5,
            itemSize: 18.0,
            direction: Axis.horizontal,
          ),
          const CommonTextWidget(
            text: "3.5",
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
    infoFieldWidget({String? title, String? fieldData}) => Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonTextWidget(
                    text: title,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppTheme.darkBlackColor,
                  ),
                  CommonTextWidget(
                    text: fieldData,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppTheme.greyColor,
                  ),
                ],
              ),
            ],
          ),
        );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarWidget,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              profileWidget,
              spaceHeightMax,
              surveyorTextWidget,
              spaceHeightMax,
              ratingBarWidget,
              spaceHeightMax,
              spaceHeightMax,
              Row(
                children: [
                  CommonTextWidget(
                    text: "Personal Info",
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: AppTheme.darkBlackColor,
                  ),
                ],
              ),
              const Divider(thickness: 1),
              spaceHeightMax,
              infoFieldWidget(title: "Name", fieldData: "Jane Cooper"),
              spaceHeightMax,
              spaceHeightMin,
              infoFieldWidget(title: "Designation", fieldData: "Surveyor"),
              spaceHeightMax,
              spaceHeightMin,
              infoFieldWidget(title: "Date Of Barth", fieldData: "8/2/19"),
              spaceHeightMax,
              spaceHeightMin,
              infoFieldWidget(title: "Phone", fieldData: "(217) 555-0113"),
              spaceHeightMax,
              spaceHeightMin,
              infoFieldWidget(
                  title: "Email", fieldData: "akanda.uxd@gmail.com"),
              spaceHeightMax,
              spaceHeightMin,
              infoFieldWidget(
                  title: "Address",
                  fieldData: "3517 W. Gray St. Utica, Pennsylvania 57867"),
              spaceHeightMax,
              spaceHeightMin,
              infoFieldWidget(title: "Fax", fieldData: "(217) 555-0113"),
              spaceHeightMax,
              spaceHeightMin,
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    CommonTextWidget(
                      text: "Attachment",
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: AppTheme.darkBlackColor,
                    ),
                  ],
                ),
              ),
              spaceHeightMax,
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _selectedIndex = 1;
                        setState(() {});
                      },
                      child: Container(
                        height: 48,
                        width: screenWidth / 3 - 17.5,
                        decoration: BoxDecoration(
                          color: _selectedIndex == 1
                              ? AppTheme.primaryColor
                              : AppTheme.greySecondColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        child: Center(
                            child: CommonTextWidget(
                          text: "NID",
                          color: _selectedIndex == 1
                              ? Colors.white
                              : AppTheme.greyColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _selectedIndex = 2;
                        setState(() {});
                      },
                      child: Container(
                        height: 48,
                        width: screenWidth / 3 - 21.5,
                        decoration: BoxDecoration(
                          color: _selectedIndex == 2
                              ? AppTheme.primaryColor
                              : AppTheme.greySecondColor,
                        ),
                        child: Center(
                            child: CommonTextWidget(
                          text: "LOI",
                          color: _selectedIndex == 2
                              ? Colors.white
                              : AppTheme.greyColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _selectedIndex = 3;
                        setState(() {});
                      },
                      child: Container(
                        height: 48,
                        width: screenWidth / 3 - 13.5,
                        decoration: BoxDecoration(
                          color: _selectedIndex == 3
                              ? AppTheme.primaryColor
                              : AppTheme.greySecondColor,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Center(
                            child: CommonTextWidget(
                          text: "Vaccine Card",
                          color: _selectedIndex == 3
                              ? Colors.white
                              : AppTheme.greyColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              spaceHeightMax,
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset("assets/nid_image.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
