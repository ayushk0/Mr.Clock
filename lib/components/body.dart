import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mr_clock/components/analog.dart';
import 'package:mr_clock/components/time.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "New Delhi, INDIA | ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                timeZone,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const Time(),
          const Clock(),
        ],
      ),
    );
  }
}
