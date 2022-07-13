// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorldClock extends StatefulWidget {
  final String cityCountry;
  final String svgIcon;
  final int hours;
  final int minutes;
  const WorldClock({
    Key? key,
    required this.cityCountry,
    required this.svgIcon,
    required this.hours,
    required this.minutes,
  }) : super(key: key);

  @override
  State<WorldClock> createState() => _WorldClockState();
}

class _WorldClockState extends State<WorldClock> {
  TimeOfDay _dateTime = TimeOfDay.fromDateTime(DateTime.now());

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(), (timer) {
      setState(() {
        _dateTime = TimeOfDay.fromDateTime(DateTime.now()
            .toUtc()
            .add(Duration(hours: widget.hours, minutes: widget.minutes)));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    String period = _dateTime.period == DayPeriod.am ? "AM" : "PM";
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: size.width * 0.05),
      child: SizedBox(
        width: size.width * 0.65,
        child: AspectRatio(
          aspectRatio: 1.5,
          child: Container(
            padding: EdgeInsets.all(size.height * 0.02),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.cityCountry,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(fontSize: size.width * 0.04),
                ),
                const SizedBox(
                  height: 5,
                ),
                (widget.hours > 0)
                    ? Text("GMT + ${widget.hours}:${widget.minutes}")
                    : Text("GMT ${widget.hours}:${widget.minutes}"),
                const Spacer(),
                Row(
                  children: [
                    SvgPicture.asset(
                      widget.svgIcon,
                      color: Theme.of(context).iconTheme.color,
                      width: size.width * 0.2,
                    ),
                    const Spacer(),
                    Text(
                      "${_dateTime.hourOfPeriod}:${_dateTime.minute}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(fontSize: size.width * 0.1),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      period,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
