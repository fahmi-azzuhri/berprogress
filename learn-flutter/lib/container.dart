import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Widget"),
        backgroundColor: Colors.red, //warna background
        foregroundColor: Colors.yellow, //warna text
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(10)),
              Container(
                  color: Colors.red,
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(20)),
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.yellow,
                height: 100,
                width: 100,
                padding: const EdgeInsets.all(10),
                child: Container(
                  color: Colors.pink,
                  padding: const EdgeInsets.all(10),
                ),
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
