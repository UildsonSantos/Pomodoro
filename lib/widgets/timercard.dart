import 'package:flutter/material.dart';
import 'package:pomodoro/utils/utils.dart';

class Timercard extends StatelessWidget {
  const Timercard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'FOCUS',
          style: textStyle(
            size: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              height: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 4,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  '14',
                  style: textStyle(
                      size: 80,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              ':',
              style: textStyle(
                size: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 10),
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              height: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 4,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  '25',
                  style: textStyle(
                      size: 80,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
