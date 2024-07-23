import 'package:flutter/material.dart';

class Sized extends StatelessWidget {
  const Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sized Box"),
      ),
      body: const Center(
          child: Column(
        children: [
          SizedBox(
              height: 100,
              width: 200,
              child: Text("Halo nama saya Fahmi Azzuhri Efki")),
          Text("Saya sedang belajar Flutter")
        ],
      )),
    );
  }
}
