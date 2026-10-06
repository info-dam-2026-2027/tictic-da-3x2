import 'package:flutter/material.dart';
import 'package:tictic_info_da/styles/sizes.dart';
import 'package:tictic_info_da/widgets/custom_btn.dart';
import 'package:tictic_info_da/widgets/logo_welcome.dart';
import 'package:tictic_info_da/widgets/w_back_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
        child: Column(children: [WBackButton(), LogoWelcome(), FormRegister()]),
      ),
    );
  }
}

class FormRegister extends StatefulWidget {
  const FormRegister({super.key});

  @override
  State<FormRegister> createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
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
            SizedBox(height: 24),
            MyPasswordInput(passwordController: passwordController),
            SizedBox(height: 24),
            CustomBtn(
              text: 'Soumettre le formulaire',
              color: Color.fromRGBO(234, 23, 123, 1),
              isDark: false,
              action: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  Navigator.pushNamed(context, '/home');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyCustomInput extends StatelessWidget {
  const MyCustomInput({
    super.key,
    required this.controller,
    required this.label,
    required this.hint,
    required this.icon,
  });

  final TextEditingController controller;
  final String label;
  final String hint;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kPaddingHorizontalL),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(icon),
          labelText: label,
          labelStyle: TextStyle(fontSize: 20, fontFamily: 'Poppins'),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hint,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
        ),
      ),
    );
  }
}

class MyPasswordInput extends StatefulWidget {
  const MyPasswordInput({super.key, required this.passwordController});

  final TextEditingController passwordController;

  @override
  State<MyPasswordInput> createState() => _MyPasswordInputState();
}

class _MyPasswordInputState extends State<MyPasswordInput> {
  bool passwordNotVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.passwordController,
      obscureText: passwordNotVisible,
      decoration: InputDecoration(
        labelText: 'Mot de passe',
        labelStyle: TextStyle(fontSize: 20, fontFamily: 'Poppins'),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Ex: ********',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              passwordNotVisible = !passwordNotVisible;
            });
          },
          icon: passwordNotVisible
              ? Icon(Icons.visibility)
              : Icon(Icons.visibility_off),
        ),
      ),
    );
  }
}
