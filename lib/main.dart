import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mr_clock/screens/home.dart';
import 'package:mr_clock/utilities/theme.dart';
import 'package:provider/provider.dart';
import 'package:timezone/data/latest.dart' as tz;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Mr. Clock',
            theme: themeData(context),
            darkTheme: darkThemeData(context),
            themeMode: themeProvider.themeMode,
            home: const HomeScreen(),
          );
        },
      );
}
