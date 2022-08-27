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
  @override
  Widget build(BuildContext context) {
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
      appBar: appBarWidget,
    );
  }
}
