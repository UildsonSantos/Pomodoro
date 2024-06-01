import 'package:flutter/material.dart';
import 'package:pomodoro/pages/pages.dart';
import 'package:pomodoro/provider/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerService>(
      create: (context) => TimerService(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PomodoroPage(),
      ),
    );
  }
}
