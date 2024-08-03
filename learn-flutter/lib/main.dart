import 'package:flutter/material.dart';
import 'package:myapp/scrollview.dart';
// import 'package:myapp/Icons.dart';
// import 'package:myapp/text-field.dart';
// import 'package:myapp/stack.dart';
// import 'package:myapp/stateful_widget.dart';
// import 'package:myapp/text_widget.dart';
// import 'package:myapp/column_row.dart';
// import 'package:myapp/main_page.dart';
// import 'package:myapp/container.dart';
// import 'package:myapp/box_decoration.dart';
// import 'package:myapp/sized_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Sekrol());
    // home: FieldText()
    // home: Iconss()
    // home: Aligen()
    // home: Wrapp()
    // home: Stackk()
    // home: Counter());
    // home: const MainPage(),
    // home: RowColumn(),
    // home: MyContainer()
    // home: DecoBox()
    // home: Sized()
    // home: WidgetText()
  }
}
