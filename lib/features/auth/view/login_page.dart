import 'package:flutter/material.dart';
import 'package:interport/bottom_nav_bar.dart';
import 'package:interport/features/auth/view/widgets/login_text_field_widget.dart';
import 'package:interport/res/resources/colors.dart';
import 'package:interport/res/resources/string_resources.dart';
import 'package:interport/res/widgets/common_text_widget.dart';

import '../../../res/widgets/common_button_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var spaceHeightMax = const SizedBox(
      height: 10,
    );
    var spaceHeightMin = const SizedBox(
      height: 5,
    );
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight * .2,
              ),
              Image.asset(
                "assets/logo.png",
                height: 125,
                width: 200,
              ),
              spaceHeightMax,
              spaceHeightMax,
              spaceHeightMax,
              spaceHeightMax,
              spaceHeightMax,
              CommonTextWidget(
                text: StringResources.loginText,
                fontSize: 21,
                fontWeight: FontWeight.w700,
                color: AppTheme.primaryColor,
              ),
              spaceHeightMax,
              spaceHeightMax,
              spaceHeightMin,
              LoginTextFieldWidget(
                  hintText: StringResources.emailOrPhoneNumberText),
              spaceHeightMax,
              spaceHeightMin,
              LoginTextFieldWidget(
                hintText: StringResources.passwordText,
                isPasswordField: true,
              ),
              spaceHeightMax,
              spaceHeightMax,
              spaceHeightMin,
              CommonButtonWidget(
                title: StringResources.loginText,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const BottomNavBar();
                  }));
                },
              ),
              spaceHeightMax,
              spaceHeightMax,
              spaceHeightMin,
              CommonTextWidget(
                text: StringResources.forgotPasswordText,
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: AppTheme.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
