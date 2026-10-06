import 'package:flutter/material.dart';

import '../styles/sizes.dart';

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
      padding: const EdgeInsets.symmetric(vertical: kPaddingHorizontal),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          //icon: Icon(icon),
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