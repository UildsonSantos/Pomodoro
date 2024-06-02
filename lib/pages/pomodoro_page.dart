import 'package:flutter/material.dart';
import 'package:pomodoro/provider/provider.dart';
import 'package:pomodoro/utils/utils.dart';
import 'package:pomodoro/widgets/widgets.dart';
import 'package:provider/provider.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Scaffold(
      backgroundColor: renderColor(provider.currentState),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: renderColor(provider.currentState),
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
            onPressed: () =>
                Provider.of<TimerService>(context, listen: false).reset(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: const Column(
            children: [
              SizedBox(height: 30),
              Timercard(),
              SizedBox(height: 40),
              TimerOptions(),
              SizedBox(height: 50),
              TimerController(),
              SizedBox(height: 50),
              TaxaProgress(),
            ],
          ),
        ),
      ),
    );
  }
}
