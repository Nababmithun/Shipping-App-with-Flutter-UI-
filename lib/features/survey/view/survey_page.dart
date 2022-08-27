import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../res/resources/colors.dart';
import '../../../res/widgets/common_text_widget.dart';

class SurveyPage extends StatefulWidget {
  const SurveyPage({Key? key}) : super(key: key);

  @override
  State<SurveyPage> createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
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
      backgroundColor: AppTheme.appBarColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: CommonTextWidget(
        text: "Survey List",
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: AppTheme.darkBlackColor,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Image.asset(
            "assets/search_icon.png",
            height: 44,
            width: 44,
          ),
        ),
      ],
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarWidget,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    _selectedIndex = 1;
                    setState(() {});
                  },
                  child: Container(
                    height: 48,
                    width: screenWidth / 2 - 24,
                    decoration: BoxDecoration(
                      color: _selectedIndex == 1
                          ? AppTheme.primaryColor
                          : AppTheme.greySecondColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: CommonTextWidget(
                        text: "Assigned",
                        color: _selectedIndex == 1
                            ? Colors.white
                            : AppTheme.darkBlackColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _selectedIndex = 2;
                    setState(() {});
                  },
                  child: Container(
                    height: 48,
                    width: screenWidth / 2 - 24,
                    decoration: BoxDecoration(
                      color: _selectedIndex == 2
                          ? AppTheme.primaryColor
                          : AppTheme.greySecondColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: CommonTextWidget(
                        text: "All",
                        color: _selectedIndex == 2
                            ? Colors.white
                            : AppTheme.darkBlackColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
