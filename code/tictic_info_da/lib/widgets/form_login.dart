import 'package:flutter/material.dart';
import 'package:tictic_info_da/widgets/custom_btn.dart';
import 'package:tictic_info_da/widgets/my_custom_input.dart';
import 'package:tictic_info_da/widgets/my_password_input.dart';

import '../styles/colors.dart';
import '../styles/sizes.dart' show kPaddingHorizontalL;

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    mailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontalL),
        child: Column(
          children: [
            MyCustomInput(
              controller: mailController,
              label: 'Adresse mail',
              hint: 'Ex : johndoe@example.com',
              icon: Icons.mail,
            ),
            SizedBox(height: 16),
            MyPasswordInput(passwordController: passwordController),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.bottomRight,
              child: CustomBtn(
                text: 'Soumettre le formulaire',
                color: kDarkGreen,
                isDark: true,
                action: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    Navigator.pushNamed(context, '/home');
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
