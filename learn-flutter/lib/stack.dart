import 'package:flutter/material.dart';

class Stackk extends StatelessWidget {
  const Stackk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Stack")),
        body: Container(
          color: Colors.amber.withOpacity(0.4),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  margin: const EdgeInsets.all(0)),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  margin: const EdgeInsets.all(20)),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  margin: const EdgeInsets.all(40))
            ],
          ),
        ));
  }
}
