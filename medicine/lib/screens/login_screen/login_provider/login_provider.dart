import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier{
  bool rememberMe = false;

  updateRememberMe(bool val){
    rememberMe = val;
    notifyListeners();
  }
}