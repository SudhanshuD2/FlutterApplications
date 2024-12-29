import 'package:api_data/views/widget_lifecycle.dart';
import 'package:flutter/material.dart';
// import 'views/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Widget Lifecycle",
      home: WidgetLifecycle(),
    );
  }
}
