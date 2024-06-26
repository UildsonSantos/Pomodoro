import 'package:flutter/material.dart';
import 'package:pomodoro/provider/provider.dart';
import 'package:provider/provider.dart';

class TimerController extends StatefulWidget {
  const TimerController({super.key});

  @override
  State<TimerController> createState() => _TimerControllerState();
}

class _TimerControllerState extends State<TimerController> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.black26,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: provider.timerPlaying
            ? const Icon(Icons.pause_rounded)
            : const Icon(Icons.play_arrow_rounded),
        color: Colors.white,
        iconSize: 55,
        onPressed: () {
          provider.timerPlaying
              ? Provider.of<TimerService>(context, listen: false).pause()
              : Provider.of<TimerService>(context, listen: false).start();
        },
      ),
    );
  }
}
