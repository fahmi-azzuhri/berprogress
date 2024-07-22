import 'package:flutter/material.dart';
// import 'package:myapp/column_row.dart';
// import 'package:myapp/main_page.dart';
import 'package:myapp/container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        // home: const MainPage(),
        // home: RowColumn(),
        home: MyContainer());
  }
}
