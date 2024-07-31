import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class Iconss extends StatelessWidget {
  const Iconss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Iconss")),
        body: const Center(
            child: Icon(EvaIcons.heart, size: 25, color: Colors.red)));
  }
}
