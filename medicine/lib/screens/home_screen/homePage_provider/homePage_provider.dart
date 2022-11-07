import 'package:flutter/material.dart';

class HomePageProvider extends ChangeNotifier{
  bool skip = false;
  bool takeMeds = false;
  bool medReschedule = false;

  updateSkip(bool value){
    skip = value;
    notifyListeners();
  }
  updateTakeMeds(bool value){
    takeMeds = value;
    notifyListeners();
  }
  updateMedReschedule(bool value){
    medReschedule = value;
    notifyListeners();
  }
}
