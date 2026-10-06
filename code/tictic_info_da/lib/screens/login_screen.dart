import 'package:flutter/material.dart';
import 'package:tictic_info_da/styles/sizes.dart';
import 'package:tictic_info_da/widgets/logo_welcome.dart';
import 'package:tictic_info_da/widgets/w_back_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/back1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
            children: [
              WBackButton(),
              LogoWelcome(),
              FormRegister(),
            ]),
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
              TextFormField(
                controller: mailController,
                decoration: InputDecoration(
                  labelText: 'Adresse mail',
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: 'Ex: johndoe@example.com',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4)
                  ),
                ),
              ),
              SizedBox(height: 24,),
              MyPasswordInput(passwordController: passwordController),
            ],
          ),
        )
    );
  }
}

class MyPasswordInput extends StatefulWidget {
  const MyPasswordInput({
    super.key,
    required this.passwordController,
  });

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
            labelStyle: TextStyle(
              fontSize: 20,
              fontFamily: 'Poppins',
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: 'Ex: ********',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4)
            ),
            suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.visibility)
            )
        )
    );
  }
}

