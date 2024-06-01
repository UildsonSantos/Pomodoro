import 'package:flutter/material.dart';
import 'package:pomodoro/provider/provider.dart';
import 'package:pomodoro/utils/utils.dart';
import 'package:provider/provider.dart';

class TimerOptions extends StatelessWidget {
  const TimerOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);

    return SingleChildScrollView(
      controller: ScrollController(initialScrollOffset: 240),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: selectTablesTimes.map((time) {
          return InkWell(
            onTap: () => provider.selectTimer(double.parse(time)),
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              width: 70,
              height: 50,
              decoration: int.parse(time) == provider.selectedTime
                  ? const BoxDecoration(
                      color: Colors.white,
                    )
                  : BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: Colors.white30,
                      ),
                    ),
              child: Center(
                child: Text(
                  (int.parse(time) ~/ 60).toString(),
                  style: textStyle(
                    size: 25,
                    fontWeight: FontWeight.bold,
                    color: int.parse(time) == provider.selectedTime
                        ? Colors.redAccent
                        : Colors.white,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
