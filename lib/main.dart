import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mr_clock/screens/home.dart';
import 'package:mr_clock/utilities/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mr. Clock',
      theme: themeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
    );
  }
}
