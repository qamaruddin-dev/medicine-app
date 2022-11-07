import 'package:flutter/material.dart';

class MorningProvider extends ChangeNotifier{
  bool reminder = false;

  updateReminder(bool value){
    reminder = value;
    notifyListeners();
  }
}