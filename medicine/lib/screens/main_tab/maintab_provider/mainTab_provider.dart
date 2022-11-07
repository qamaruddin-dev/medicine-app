
import 'package:flutter/material.dart';

class MainTabProvider extends ChangeNotifier{
  int currentIndex = 0;

  updateIndex(int value){
    currentIndex = value;
    notifyListeners();
  }
}