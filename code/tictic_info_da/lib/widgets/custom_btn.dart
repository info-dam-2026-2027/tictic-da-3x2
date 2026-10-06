import 'package:flutter/material.dart';
import 'package:tictic_info_da/styles/sizes.dart';
import 'package:tictic_info_da/styles/texts.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  final Color color;
  final GestureTapCallback? action;
  final bool isDark;

  const CustomBtn({
    super.key,
    required this.text,
    required this.color,
    required this.isDark,
    required this.action
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: (kPaddingHorizontalS * 1.5), vertical: kPaddingHorizontalS), // magic number
          child: Text(text, style: isDark ? kWhiteBtnTextStyle : kDarkBtnTextStyle,),
        ),
      ),
    );
  }
}