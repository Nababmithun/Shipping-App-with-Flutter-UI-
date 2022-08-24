import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../res/resources/colors.dart';

class LoginTextFieldWidget extends StatefulWidget {
  final TextEditingController? textFieldController;
  final String? hintText;
  final bool isPasswordField;
  const LoginTextFieldWidget({
    Key? key,
    this.textFieldController,
    this.hintText,
    this.isPasswordField = false,
  }) : super(key: key);

  @override
  State<LoginTextFieldWidget> createState() => _LoginTextFieldWidgetState();
}

class _LoginTextFieldWidgetState extends State<LoginTextFieldWidget> {
  bool isViewPassword = false;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: AppTheme.primaryColor,
            ),
      ),
      child: TextField(
        controller: widget.textFieldController,
        cursorColor: AppTheme.primaryColor,
        textAlign: TextAlign.left,
        obscureText: !isViewPassword,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(
            top: 16,
            bottom: 16,
            right: 5,
            left: 20,
          ),
          suffixIcon: widget.isPasswordField
              ? GestureDetector(
                  onTap: () {
                    isViewPassword = !isViewPassword;
                    setState(() {});
                  },
                  child: Icon(
                    isViewPassword ? Icons.visibility_off : Icons.visibility,
                    color: AppTheme.greySecondColor,
                  ),
                )
              : const SizedBox(),
          hintText: widget.hintText ?? "",
          hintStyle: GoogleFonts.roboto(
            color: AppTheme.greySecondColor,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: AppTheme.greyColor),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: AppTheme.primaryColor),
            borderRadius: BorderRadius.circular(12),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 1, color: Color.fromARGB(255, 66, 125, 145)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
