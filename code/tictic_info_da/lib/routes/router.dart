import 'package:flutter/material.dart';
import 'package:tictic_info_da/screens/login_screen.dart';
import 'package:tictic_info_da/screens/register_screen.dart';
import 'package:tictic_info_da/screens/welcome_screen.dart';

Map<String, WidgetBuilder> router = {
  '/' : (BuildContext context) => WelcomeScreen(),
  '/login' : (BuildContext context) => LoginScreen(),
  '/register' : (BuildContext context) => RegisterScreen(),
};