import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_info_da/styles/sizes.dart';

class LogoWelcome extends StatelessWidget {
  const LogoWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: kLogoWelcomePaddingTop,
          bottom: kLogoWelcomePaddingBottom
      ),
      child: SvgPicture.asset(
        'assets/icons/logo.svg',
        width: kLogoWelcomeSize,
        height: kLogoWelcomeSize,
      ),
    );
  }
}

