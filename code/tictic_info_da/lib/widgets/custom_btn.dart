import 'package:flutter/material.dart';
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
        color: color,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0), // magic number
          child: Text(text, style: isDark ? kWhiteBtnTextStyle : kDarkBtnTextStyle,),
        ),
      ),
    );
  }
}