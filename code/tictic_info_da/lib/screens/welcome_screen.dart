import 'package:flutter/material.dart';
import 'package:tictic_info_da/styles/colors.dart';
import 'package:tictic_info_da/styles/sizes.dart';
import 'package:tictic_info_da/styles/texts.dart';
import 'package:tictic_info_da/widgets/carousel.dart';
import 'package:tictic_info_da/widgets/logo_welcome.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/back1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(child: Column(children: [LogoWelcome(), Carousel()])),
      ),
    );
  }
}
