import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interport/res/resources/colors.dart';
import 'package:interport/res/widgets/common_text_widget.dart';

import '../survey_details_page.dart';

class SurveyCardWidget extends StatelessWidget {
  const SurveyCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var spaceHeightMax = const SizedBox(
      height: 10,
    );
    var spaceHeightMin = const SizedBox(
      height: 5,
    );
    var spaceWidthMax = const SizedBox(
      width: 10,
    );
    var spaceWidthMin = const SizedBox(
      width: 5,
    );
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SurveyDetailsPage()),
          );
        },
        child: Container(
          height: 113,
          padding:
              const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 16),
          decoration: BoxDecoration(
            color: AppTheme.greyThirdColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonTextWidget(
                text: "SID 4521",
                color: AppTheme.darkBlackColor,
                fontWeight: FontWeight.w500,
              ),
              Row(
                children: [
                  CommonTextWidget(
                    text: "Client Name : ",
                    color: AppTheme.greyFourthColor,
                    fontWeight: FontWeight.w500,
                  ),
                  CommonTextWidget(
                    text: "Eleanor Pena",
                    color: AppTheme.greyFourthColor,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonTextWidget(
                        text: "Work Order Date",
                        color: AppTheme.greyFourthColor,
                        fontWeight: FontWeight.w500,
                      ),
                      CommonTextWidget(
                        text: "12/2/2022",
                        color: AppTheme.greyFourthColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  spaceWidthMax,
                  spaceWidthMax,
                  spaceWidthMax,
                  spaceWidthMax,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonTextWidget(
                        text: "Survey Date",
                        color: AppTheme.greyFourthColor,
                        fontWeight: FontWeight.w500,
                      ),
                      CommonTextWidget(
                        text: "_",
                        color: AppTheme.greyFourthColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
