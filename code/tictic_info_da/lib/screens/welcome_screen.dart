import 'package:flutter/material.dart';
import 'package:tictic_info_da/styles/colors.dart';
import 'package:tictic_info_da/widgets/carousel.dart';
import 'package:tictic_info_da/widgets/custom_btn.dart';
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
        child: SafeArea(
          child: Column(
            children: [
              LogoWelcome(),
              Carousel(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text('Continuer sans compte'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: kDarkGreen,
                  foregroundColor: kWhite,
                ),
              ),
              SizedBox(height: 16,),
              Row(
                children: [
                  CustomBtn(
                    text: 'Je me connecte',
                    color: kLightGreen,
                    action: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    isDark: false,
                  ),
                  CustomBtn(
                    text: 'Créer mon compte',
                    color: kLightGreen,
                    action: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    isDark: false,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
