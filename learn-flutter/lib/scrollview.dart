import 'package:flutter/material.dart';

class Sekrol extends StatefulWidget {
  const Sekrol({super.key});

  @override
  State<Sekrol> createState() => _SekrolState();
}

class _SekrolState extends State<Sekrol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sekrol"),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: createContainer(),
      ),
    );
    // body: SingleChildScrollView(
    //   scrollDirection: Axis
    //       .horizontal, //kalo dibuatnya row maka harus menggunakan scrollDirection
    //   child: Row(
    //     children: createContainer(),
    //   ),
    // ));
  }

  List<Widget> createContainer() => List.generate(
      8,
      (index) => UnconstrainedBox(
            //utk mengatur lebar dan tinggi container saat menggunakan ListView
            child: Container(
              color: Colors.amber,
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: const Center(child: Text("Sekrol")),
            ),
          ));
}
