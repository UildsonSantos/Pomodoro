import 'package:flutter/material.dart';
import 'package:pomodoro/utils/utils.dart';
import 'package:pomodoro/widgets/widgets.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.redAccent,
        title: Text(
          'PROMOTIMER',
          style: textStyle(
            size: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            iconSize: 40,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: const Column(
            children: [
               SizedBox(height: 15),
               Timercard(),

            ],
          ),
        ),
      ),
    );
  }
}
