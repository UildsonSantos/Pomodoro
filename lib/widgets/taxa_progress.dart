import 'package:flutter/material.dart';
import 'package:pomodoro/provider/provider.dart';
import 'package:pomodoro/utils/utils.dart';
import 'package:provider/provider.dart';

class TaxaProgress extends StatelessWidget {
  const TaxaProgress({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '${provider.rounds}/4',
              style: textStyle(
                size: 30,
                color: Colors.grey[350],
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${provider.goal}/12',
              style: textStyle(
                size: 30,
                color: Colors.grey[350],
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'ROUND',
              style: textStyle(
                size: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'GOAL',
              style: textStyle(
                size: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ],
    );
  }
}
