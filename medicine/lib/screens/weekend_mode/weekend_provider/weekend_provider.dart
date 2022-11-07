import 'package:flutter/material.dart';

class WeekendProvider extends ChangeNotifier{
  bool reminder = false;

  updateReminder(bool value){
    reminder = value;
    notifyListeners();
  }
}