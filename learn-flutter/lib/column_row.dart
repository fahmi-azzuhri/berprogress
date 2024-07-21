import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My App")),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment
            .spaceAround, //dimulai dari atas ke bawah diberi jarak karena spaceAroud
        crossAxisAlignment: CrossAxisAlignment
            .center, //dimulai dari kiri ke kanan diberi nilai center biar rata tengah
        children: [
          Text("Hello"),
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceAround, //dimulai dari kiri ke kanan diberi jarak karena spaceAround
            crossAxisAlignment: CrossAxisAlignment
                .center, //dimulai dari atas ke bawah diberi nilai center biar rata tengah
            children: [
              Text("World"),
              Text("World \n Wide"),
              Text("World"),
              Text("World"),
            ],
          ),
          Text("Hello"),
        ],
      ),
    );
  }
}
