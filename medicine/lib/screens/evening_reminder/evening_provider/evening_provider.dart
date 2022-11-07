import 'package:flutter/material.dart';

class EveningProvider extends ChangeNotifier{
  bool reminder = false;

  updateReminder(bool value){
    reminder = value;
    notifyListeners();
  }
}