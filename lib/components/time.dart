import 'dart:async';
import 'package:flutter/material.dart';

class Time extends StatefulWidget {
  const Time({Key? key}) : super(key: key);

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  TimeOfDay _timeOfDay = TimeOfDay.now();
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(), (timer) {
      setState(() {
        _timeOfDay = TimeOfDay.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    String period = _timeOfDay.period == DayPeriod.am ? "AM" : "PM";
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${_timeOfDay.hourOfPeriod}:${_timeOfDay.minute}",
          style: Theme.of(context).textTheme.headline1,
        ),
        const SizedBox(
          width: 10,
        ),
        RotatedBox(
            quarterTurns: 3,
            child: Text(
              period,
              style: const TextStyle(fontSize: 20),
            )),
      ],
    );
  }
}
