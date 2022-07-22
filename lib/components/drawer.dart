import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mr_clock/screens/world.dart';
import 'package:mr_clock/utilities/theme.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    Size size = MediaQuery.of(context).size;
    return Drawer(
      child: Padding(
        padding: EdgeInsets.only(
            left: size.width * 0.03,
            top: size.height * 0.05,
            bottom: size.height * 0.03),
        child: Column(
          children: [
            Row(
              children: [
                const Spacer(),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close_rounded),
                  iconSize: size.width * 0.1,
                ),
              ],
            ),
            Text("Mr. Clock",
                style: GoogleFonts.cormorant(
                  fontSize: size.width * 0.15,
                )),
            Text(
              'from',
              style: GoogleFonts.lato(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                "assets/icons/softegy.svg",
                width: size.width * 0.2,
              ),
            ),
            const Divider(),
            listHeader(context, size, "EXPLORE"),
            Row(
              children: [
                const Icon(Icons.access_time_rounded),
                TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WorldScreen())),
                    child: Text(
                      "World Clock",
                      style: Theme.of(context).textTheme.bodyText1,
                    )),
              ],
            ),
            const Divider(),
            listHeader(context, size, "APPEARANCE"),
            Row(
              children: [
                const Icon(Icons.nightlight_round_sharp),
                Text(
                  "Dark Theme",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const Spacer(),
                Switch.adaptive(
                    activeColor: Theme.of(context).primaryColor,
                    value: themeProvider.isDarkMode,
                    onChanged: (value) {
                      final provider =
                          Provider.of<ThemeProvider>(context, listen: false);
                      provider.toggleTheme(value);
                    })
              ],
            ),
            const Divider(),
            listHeader(context, size, "ABOUT"),
            Row(
              children: const [
                Icon(Icons.settings_suggest_outlined),
                SizedBox(
                  width: 20,
                ),
                Text("Version"),
                Spacer(),
                Text("1.0"),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Align listHeader(BuildContext context, Size size, String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodyText2
            ?.copyWith(fontSize: size.width * 0.04),
      ),
    );
  }
}
