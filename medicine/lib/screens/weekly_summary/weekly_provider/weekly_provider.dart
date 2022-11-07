import 'package:flutter/material.dart';

class WeeklyProvider extends ChangeNotifier{
  bool reminder = false;

  updateReminder(bool value){
    reminder = value;
    notifyListeners();
  }
}