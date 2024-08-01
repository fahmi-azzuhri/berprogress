import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class FieldText extends StatelessWidget {
  const FieldText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Text Field")),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Enter your name",
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 255, 100, 100)),
                  // labelText: Text("Ini label"),
                  labelText: "ini label",
                  labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.lightGreen),
                  helperText: "ini helper",
                  helperStyle: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.normal)),
              //placeholder,
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              // obscureText: true,
              // obscuringCharacter: "*",
            )
          ],
        ),
      ),
    );
  }
}
