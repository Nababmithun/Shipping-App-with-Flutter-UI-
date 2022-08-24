import 'package:flutter/material.dart';
import 'package:interport/res/resources/colors.dart';
import 'package:interport/res/resources/string_resources.dart';
import 'package:interport/res/widgets/common_text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.appBarColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: CommonTextWidget(
          text: StringResources.dashboardText,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              color: AppTheme.greyColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Icon(
              Icons.person_outline_rounded,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Image.asset(
              "assets/notification.png",
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
    );
  }
}
