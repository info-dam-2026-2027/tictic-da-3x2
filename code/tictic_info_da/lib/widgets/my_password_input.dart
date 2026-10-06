import 'package:flutter/material.dart';

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