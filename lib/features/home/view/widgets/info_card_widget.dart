import 'package:flutter/material.dart';
import 'package:interport/res/resources/colors.dart';
import 'package:interport/res/widgets/common_text_widget.dart';

class InfoCardWidget extends StatelessWidget {
  final bool isGreyColor;
  final String? title;
  final String? count;
  const InfoCardWidget(
      {Key? key, this.title, this.count, this.isGreyColor = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var spaceHeightMax = const SizedBox(
      height: 10,
    );
    var spaceHeightMin = const SizedBox(
      height: 5,
    );
    return Container(
      height: screenWidth / 2 - 44,
      width: screenWidth / 2 - 24,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isGreyColor ? AppTheme.lightGreyColor : AppTheme.primaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CommonTextWidget(
            text: title ?? "",
            fontWeight: FontWeight.w700,
            fontSize: 17,
            textAlign: TextAlign.center,
            color: !isGreyColor ? Colors.white : AppTheme.darkBlackColor,
          ),
          spaceHeightMin,
          Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppTheme.lightGreyColor,
            ),
            child: Center(
              child: CommonTextWidget(
                text: count ?? "0",
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: isGreyColor
                    ? AppTheme.darkBlackColor
                    : AppTheme.primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
