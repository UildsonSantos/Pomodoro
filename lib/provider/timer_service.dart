import 'dart:async';

import 'package:flutter/material.dart';

class TimerService extends ChangeNotifier {
  late Timer timer;
  double currentDuration = 10;
  double selectedTime = 10;
  bool timerPlaying = false;
  int rounds = 0;
  int goal = 0;
  String currentState = 'FOCUS';

  void start() {
    timerPlaying = true;
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (currentDuration == 0) {
        handleNextRound();
      } else {
        currentDuration--;
        notifyListeners();
      }
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

  void handleNextRound() {
    if (currentState == 'FOCUS' && rounds != 3) {
      currentState = 'BREAK';
      currentDuration = 5;
      selectedTime = 5;
      rounds++;
      goal++;
    } else if (currentState == 'BREAK') {
      currentState = 'FOCUS';
      currentDuration = 10;
      selectedTime = 10;
    } else if (currentState == 'FOCUS' && rounds == 3) {
      currentState = 'LONGBREAK';
      currentDuration = 10;
      selectedTime = 10;
      rounds++;
      goal++;
    } else if (currentState == 'LONGBREAK') {
      currentState = 'FOCUS';
      currentDuration = 10;
      selectedTime = 10;
      rounds = 0;
    }
    notifyListeners();
  }
}
