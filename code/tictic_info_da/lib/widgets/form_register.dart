import 'package:flutter/material.dart';
import 'package:tictic_info_da/widgets/custom_btn.dart';
import 'package:tictic_info_da/widgets/my_custom_input.dart';
import 'package:tictic_info_da/widgets/my_password_input.dart';

import '../styles/colors.dart';
import '../styles/sizes.dart' show kPaddingHorizontalL;

class FormRegister extends StatefulWidget {
  const FormRegister({super.key});

  @override
  State<FormRegister> createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController mailController = TextEditingController();
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    mailController.dispose();
    firstnameController.dispose();
    lastnameController.dispose();
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
              controller: firstnameController,
              label: 'Prénom',
              hint: 'Ex : John',
              icon: Icons.person,
            ),
            MyCustomInput(
              controller: lastnameController,
              label: 'Nom',
              hint: 'Ex : Doe',
              icon: Icons.man,
            ),
            MyCustomInput(
              controller: mailController,
              label: 'Adresse mail',
              hint: 'Ex : johndoe@example.com',
              icon: Icons.mail,
            ),
            SizedBox(height: 24),
            MyPasswordInput(passwordController: passwordController),
            SizedBox(height: 24),
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
