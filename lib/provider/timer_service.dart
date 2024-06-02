import 'dart:async';

import 'package:flutter/material.dart';

class TimerService extends ChangeNotifier {
  late Timer timer;
  double currentDuration = 1500;
  double selectedTime = 1500;
  bool timerPlaying = false;

  void start() {
    timerPlaying = true;
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      currentDuration--;
      notifyListeners();
    });
  }

  void pause() {
    timer.cancel();
    timerPlaying = false;
    notifyListeners();
  }

  void selectTimer(double seconds) {
    selectedTime = seconds;
    currentDuration = seconds;
    notifyListeners();
  }
}
