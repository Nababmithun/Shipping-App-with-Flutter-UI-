import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../resources/colors.dart';
import 'common_text_widget.dart';

class CommonTextField extends StatelessWidget {
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final String? labelText;
  final double? labelFontSize;
  final String? hintText;
  final String? errorText;
  final TextInputType? keyboardType;
  final int? maxLines;
  final int? minLines;
  final Color? fontColor;
  final bool? minimizeBottomPadding;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? margin;
  final FocusNode? focusNode;
  final bool? autofocus;
  final bool? enabled;
  final bool? autovalidate;
  final bool? readOnly;
  final bool? isRequired;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onFieldSubmitted;
  final Widget? prefix;
  final ValueChanged<String>? onChanged;
  final int? maxLength;
  final GestureTapCallback? onTap;
  final Key? textFieldKey;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double? borderRadius;
  final bool? isFilled;
  final Color? fillColor;
  final bool? obSecure;
  final double? topPadding;
  final double? leftContentPadding;
  final double? hintSize;
  final List<TextInputFormatter>? inputFormatters;
  final Color? focusBorderColor;
  final Color? enableBorderColor;
  final double? labelLeftPadding;
  final double? labelBottomPadding;

  const CommonTextField(
      {this.labelLeftPadding = 0,
      this.labelBottomPadding = 0,
      this.labelFontSize = 12,
      this.focusBorderColor = const Color(0xffC0C0C0),
      this.minimizeBottomPadding = false,
      this.readOnly = false,
      this.enabled = true,
      this.maxLength,
      this.validator,
      this.prefix,
      this.errorText,
      this.fontColor = Colors.black,
      this.onChanged,
      this.textInputAction,
      this.autovalidate = false,
      this.controller,
      this.onFieldSubmitted,
      this.focusNode,
      this.hintSize = 14,
      this.isRequired = false,
      this.autofocus = false,
      this.labelText,
      this.fillColor = Colors.white,
      this.isFilled = false,
      this.hintText,
      this.minLines,
      this.prefixIcon,
      this.obSecure = false,
      this.suffixIcon,
      this.borderRadius = 10,
      this.onTap,
      this.margin = const EdgeInsets.all(5),
      this.keyboardType,
      this.leftContentPadding = 0,
      this.contentPadding =
          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      this.maxLines = 1,
      this.textFieldKey,
      this.topPadding = 0,
      this.inputFormatters,
      this.enableBorderColor = const Color(0xffC0C0C0)});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    FocusScopeNode currentFocus = FocusScope.of(context);

    return Column(
      children: [
        if (labelText != null)
          Row(
            children: [
              Flexible(
                child: CommonTextWidget(
                    text: labelText ?? "",
                    fontSize: labelFontSize,
                    color: AppTheme.greyColor),
              ),
            ],
          ),
        // const SizedBox(
        //   height: 10,
        // ),
        TextFormField(
          inputFormatters: inputFormatters,
          obscureText: obSecure!,
          key: textFieldKey,
          onTap: onTap,
          readOnly: readOnly!,
          enabled: enabled,
          maxLength: maxLength,
          style: TextStyle(color: fontColor),
          minLines: minLines,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          autofocus: autofocus!,
          focusNode: focusNode,
          maxLines: maxLines,
          keyboardType: keyboardType,
          validator: validator,
          controller: controller,
          textInputAction: textInputAction,
          decoration: InputDecoration(
            filled: isFilled,
            fillColor: fillColor,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            prefix: prefix,
            border: InputBorder.none,
            hintStyle:
                TextStyle(fontSize: hintSize, color: AppTheme.greySecondColor),
            contentPadding:
                EdgeInsets.fromLTRB(leftContentPadding!, topPadding!, 0.0, 0.0),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppTheme.greySecondColor),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppTheme.greySecondColor),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 1.0),
              borderRadius: BorderRadius.circular(borderRadius!),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 1.0),
              borderRadius: BorderRadius.circular(borderRadius!),
            ),
            hintText: hintText,
          ),
        ),
        errorText == null
            ? const SizedBox()
            : Padding(
                padding: const EdgeInsets.only(left: 38, top: 0, right: 38),
                child: CommonTextWidget(text: errorText!, color: Colors.red),
              )
      ],
    );
  }
}
