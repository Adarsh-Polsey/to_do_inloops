import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'providers/task_provider.dart';
import 'providers/theme_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // Add,delete, load(offline), toggle task status
        ChangeNotifierProvider(create: (_) => TaskProvider()),
        // store and load theme data
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'To-Do List',
      debugShowCheckedModeBanner: false,
      theme: themeProvider.currentTheme,
      home: const HomeScreen(),
    );
  }
}