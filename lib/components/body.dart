import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mr_clock/components/analog.dart';
import 'package:mr_clock/components/time.dart';
import 'package:mr_clock/components/world_clock.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String timeZone = "";

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(), (timer) {
      setState(() {
        timeZone = DateTime.now().timeZoneName;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  (timeZone == "IST") ? "New Delhi, INDIA | " : "Local | ",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  timeZone,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            const Time(),
            const Spacer(),
            const Clock(),
            const Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  WorldClock(
                    cityCountry: "New York, USA",
                    svgIcon: "assets/icons/liberty.svg",
                    hours: -4,
                    minutes: 0,
                  ),
                  WorldClock(
                    cityCountry: "London, UK",
                    svgIcon: "assets/icons/london.svg",
                    hours: 1,
                    minutes: 0,
                  ),
                  WorldClock(
                    cityCountry: "Cape Town, SA",
                    svgIcon: "assets/icons/capetown.svg",
                    hours: 2,
                    minutes: 0,
                  ),
                  WorldClock(
                    cityCountry: "Moscow, RUSSIA",
                    svgIcon: "assets/icons/moscow.svg",
                    hours: 3,
                    minutes: 0,
                  ),
                  WorldClock(
                    cityCountry: "Sydney, AUS",
                    svgIcon: "assets/icons/sydney.svg",
                    hours: 10,
                    minutes: 0,
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
