import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(body: Center()));
  }
}

// Android

// -------- Run dev -------

// flutter run -t lib/main_dev.dart

// -------- Run qa -------

// flutter run -t lib/main_qa.dart

// -------- Run prod -------

// flutter run -t lib/main_prod.dart
