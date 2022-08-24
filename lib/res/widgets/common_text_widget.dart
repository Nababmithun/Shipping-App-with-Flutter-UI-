import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonTextWidget extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  const CommonTextWidget(
      {Key? key,
      @required this.text,
      this.overflow = TextOverflow.ellipsis,
      this.fontSize = 14,
      this.color = Colors.black,
      this.fontWeight = FontWeight.normal,
      this.maxLines = 100,
      this.textAlign = TextAlign.start,
      this.textDirection = TextDirection.ltr})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
      textDirection: textDirection,
      style: GoogleFonts.inter(
          fontWeight: fontWeight,
          color: color,
          fontSize: fontSize
      ),
    );
  }
}
