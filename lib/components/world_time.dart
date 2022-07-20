// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timezone/timezone.dart' as tz;

class WorldTime extends StatefulWidget {
  final String region;
  final String city;
  final String svgIcon;
  final String dCity;

  const WorldTime({
    Key? key,
    required this.region,
    required this.city,
    required this.svgIcon,
    required this.dCity,
  }) : super(key: key);

  @override
  State<WorldTime> createState() => _WorldTimeState();
}

class _WorldTimeState extends State<WorldTime> {
  tz.Location location = tz.getLocation("Asia/Kolkata");
  late tz.TZDateTime locTime = tz.TZDateTime.now(location);

  @override
  void initState() {
    super.initState();
    tz.Location location = tz.getLocation('${widget.region}/${widget.city}');
    Timer.periodic(const Duration(), (timer) {
      setState(() {
        locTime = tz.TZDateTime.now(location);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(size.width * 0.03),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SvgPicture.asset(
              widget.svgIcon,
              color: Theme.of(context).iconTheme.color,
              width: size.width * 0.15,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text(
                  widget.dCity,
                  style: GoogleFonts.poppins(
                    fontSize: size.width * 0.05,
                    color: Theme.of(context).iconTheme.color,
                    fontWeight: FontWeight.w500,
                  )
                ),
                Text(locTime.timeZoneName,
                style: GoogleFonts.poppins(
                    color: Theme.of(context).iconTheme.color,
                  )),
              ],
            ),
            const Spacer(),
            Text(
              '${locTime.hour}:${locTime.minute}',
              style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 25),
            ),
            Text(':${locTime.second}',
            style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
