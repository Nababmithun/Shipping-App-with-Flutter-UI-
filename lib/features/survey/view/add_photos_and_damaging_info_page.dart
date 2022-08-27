import 'package:flutter/material.dart';
import 'package:interport/res/resources/colors.dart';
import 'package:interport/res/widgets/common_button_widget.dart';
import 'package:interport/res/widgets/common_text_widget.dart';

class AddPhotoAndDamageInfoPage extends StatefulWidget {
  const AddPhotoAndDamageInfoPage({Key? key}) : super(key: key);

  @override
  State<AddPhotoAndDamageInfoPage> createState() =>
      _AddPhotoAndDamageInfoPageState();
}

class _AddPhotoAndDamageInfoPageState extends State<AddPhotoAndDamageInfoPage> {
  @override
  Widget build(BuildContext context) {
    var spaceHeightMax = const SizedBox(
      height: 10,
    );
    var spaceHeightMin = const SizedBox(
      height: 5,
    );
    var spaceWidthMin = const SizedBox(
      width: 5,
    );
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var appBarWidget = AppBar(
      backgroundColor: AppTheme.appBarColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: CommonTextWidget(
        text: "Add Photos & Damaging info..",
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
      appBar: appBarWidget,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 54,
                decoration: BoxDecoration(
                  color: AppTheme.redColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                    ),
                    spaceWidthMin,
                    const CommonTextWidget(
                      text: "Take Picture",
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            spaceHeightMax,
            CommonButtonWidget(title: "Done", onTap: () {}),
          ],
        ),
      ),
    );
  }
}
