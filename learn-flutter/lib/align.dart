import 'package:flutter/material.dart';

class Aligen extends StatelessWidget {
  const Aligen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Align")),
      body: const Align(
        // alignment: Alignment.center,
        alignment: Alignment(-1,
            0.5), // x dan y. kalo x positif berarti kanan begitu juga sebaliknya. kalo y positif berarti dibawah begitu juga sebaliknya
        child: SizedBox(
          width: 300,
          child: Text(
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
        ),
      ),
    );
  }
}
