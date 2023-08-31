import 'package:flutter/material.dart';
import 'bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Mingle',
      theme: theme.copyWith(
        scaffoldBackgroundColor: Colors.grey.shade100,
      ),
      home: const BottomBar(),
    );
  }
}
