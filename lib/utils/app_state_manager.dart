import 'package:flutter/material.dart';

class AppStateManager extends ChangeNotifier{
  List<bool> isSelectedList = [false, false, false, false, false, false];
    int currentIndex = 0;
    int sliderCurrentIndex = 0;
    bool isSelected = false;

    void updateCurrentIndex(index){
      currentIndex = index;
      notifyListeners();
    }
    void updateSliderCurrentIndex(index){
      sliderCurrentIndex = index;
      notifyListeners();
    }
    void switchSelection(value){
      isSelected = value;
      notifyListeners();
    }
}