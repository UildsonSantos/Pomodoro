import 'package:flutter/material.dart';

class TimerController extends StatefulWidget {
  const TimerController({super.key});

  @override
  State<TimerController> createState() => _TimerControllerState();
}

class _TimerControllerState extends State<TimerController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.black26,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: const Icon(Icons.pause),
        color: Colors.white,
        iconSize: 55,
        onPressed: () {},
      ),
    );
  }
}
