import 'package:flutter/material.dart';
import 'package:tictic_info_da/styles/colors.dart';
import 'package:tictic_info_da/widgets/w_back_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
        child: Column(
          children: [
            WBackButton(),
          ],
        ),
      ),
    );
  }
}
