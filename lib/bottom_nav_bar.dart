import 'package:flutter/material.dart';
import 'package:interport/features/survey/view/survey_page.dart';
import 'package:interport/res/resources/colors.dart';
import 'package:interport/res/widgets/common_text_widget.dart';

import 'features/home/view/home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  int _lastSelected = 0;

  _moveTo(int index) {
    _currentIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    List _pages = <Widget>[
      const HomePage(),
      const SizedBox(),
      const SurveyPage(),
    ];

    Widget navBarIcon({
      required String bottomName,
      required int selectIndex,
      required String imagePath,
      required String fillImagePath,
    }) {
      return GestureDetector(
        onTap: () {
          _lastSelected = _currentIndex;
          _currentIndex = selectIndex;
          setState(() {});
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                _currentIndex != selectIndex ? imagePath : fillImagePath,
                // color: _currentIndex != selectIndex
                //     ? Colors.grey
                //     : AppTheme.primaryColor,
                height: 24,
                width: 26,
              ),
              const SizedBox(
                height: 5,
              ),
              CommonTextWidget(
                text: bottomName,
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: _currentIndex != selectIndex
                    ? Colors.grey
                    : AppTheme.primaryColor,
              ),
            ],
          ),
        ),
      );
    }

    return WillPopScope(
      onWillPop: () async {
        if (_currentIndex == 0) {
          return true;
        } else {
          _moveTo(0);
          return false;
        }
      },
      child: Scaffold(
        bottomNavigationBar: Container(
          // decoration: BoxDecoration(
          //   color: Colors.white,
          //   boxShadow: [
          //     BoxShadow(
          //       color: Colors.grey.withOpacity(0.5),
          //       spreadRadius: 2,
          //       blurRadius: 5,
          //       offset: const Offset(0, 3), // changes position of shadow
          //     ),
          //   ],
          // ),
          color: Colors.white,
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              navBarIcon(
                bottomName: "Home",
                selectIndex: 0,
                imagePath: "assets/home.png",
                fillImagePath: "assets/home_fill.png",
              ),
              navBarIcon(
                bottomName: "Reports",
                selectIndex: 1,
                imagePath: "assets/report.png",
                fillImagePath: "assets/report_fill.png",
              ),
              navBarIcon(
                bottomName: "More",
                selectIndex: 2,
                imagePath: "assets/more.png",
                fillImagePath: "assets/more_fill.png",
              ),
            ],
          ),
        ),
        body: _pages[_currentIndex],
      ),
    );
  }
}
