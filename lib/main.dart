import 'package:flutter/material.dart';

// Pages
import 'package:tasker/pages/home_page.dart';

// Database
import 'package:hive_flutter/hive_flutter.dart';

// Themes
import 'package:tasker/themes/color_schemes.g.dart';
import 'package:tasker/themes/typography.dart';

void main() async {
  await Hive.initFlutter("hive_boxes");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasker',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        textTheme: textTheme,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        textTheme: textTheme,
      ),
      themeMode: ThemeMode.dark,
      home: const HomePage(),
    );
  }
}
