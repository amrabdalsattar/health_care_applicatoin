import 'package:flutter/material.dart';

class AppStateManager extends ChangeNotifier{
    int currentIndex = 0;
    int sliderCurrentIndex = 0;

    void updateCurrentIndex(index){
      currentIndex = index;
      notifyListeners();
    }
    void updateSliderCurrentIndex(index){
      sliderCurrentIndex = index;
      notifyListeners();
    }
}