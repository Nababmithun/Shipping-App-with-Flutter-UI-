import 'package:flutter/material.dart';
import 'package:interport/res/resources/colors.dart';
import 'package:interport/res/widgets/common_text_widget.dart';

class CommonButtonWidget extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final GestureTapCallback onTap;
  const CommonButtonWidget(
      {Key? key,
      required this.title,
      this.height = 52,
      this.width = 327,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppTheme.primaryColor,
        ),
        child: Center(
          child: CommonTextWidget(
            text: title,
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
