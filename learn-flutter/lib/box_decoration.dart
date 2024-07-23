import 'package:flutter/material.dart';

class DecoBox extends StatelessWidget {
  const DecoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Box Decoration"),
        ),
        body: Center(
          child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 5),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  image: const DecorationImage(
                      image: NetworkImage("https://picsum.photos/200/200")))),
        ));
  }
}
