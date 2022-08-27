import 'package:flutter/material.dart';
import 'package:interport/features/survey/view/widgets/common_expadable_widget.dart';
import 'package:interport/res/widgets/common_button_widget.dart';

import '../../../res/resources/colors.dart';
import '../../../res/widgets/common_text_widget.dart';
import 'add_photos_and_damaging_info_page.dart';

class SurveyDetailsPage extends StatefulWidget {
  const SurveyDetailsPage({Key? key}) : super(key: key);

  @override
  State<SurveyDetailsPage> createState() => _SurveyDetailsPageState();
}

class _SurveyDetailsPageState extends State<SurveyDetailsPage> {
  bool isExpendable = false;
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
        text: "SID 4521",
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: AppTheme.darkBlackColor,
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_rounded,
          color: AppTheme.darkBlackColor,
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarWidget,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  isExpendable = !isExpendable;
                  setState(() {});
                },
                child: CommonExpandableWidget(
                  title: "Survey Info",
                  isExpandable: isExpendable,
                ),
              ),
              spaceHeightMax,
              spaceHeightMin,
              const CommonExpandableWidget(
                title: "Project Details",
              ),
              spaceHeightMax,
              spaceHeightMin,
              const CommonExpandableWidget(
                title: "ET Details",
              ),
              spaceHeightMax,
              spaceHeightMin,
              const CommonExpandableWidget(
                title: "C & F Consignee",
              ),
              spaceHeightMax,
              spaceHeightMin,
              const CommonExpandableWidget(
                title: "Carrier Agent at BD",
              ),
              spaceHeightMax,
              spaceHeightMin,
              const CommonExpandableWidget(
                title: "Final Packing List",
              ),
              spaceHeightMax,
              spaceHeightMax,
              spaceHeightMin,
              CommonButtonWidget(
                  height: 54,
                  title: "Add Photos & Damaging information",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AddPhotoAndDamageInfoPage()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
