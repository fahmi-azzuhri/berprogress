import 'package:flutter/material.dart';

class Wrapp extends StatelessWidget {
  const Wrapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Wrap")),
        body: Container(
          width: double.infinity,
          height:
              double.infinity, //dikasih infinity biar mengikuti ukuran layar
          child: Wrap(
            //wrap secara default dibuat dari kiri ke kanan(horizontal)
            // direction: Axis
            //     .vertical, //mengubah arah menjadi dari atas ke bawah (vertikal)
            alignment: WrapAlignment
                .center, // arah bungkusan widgetnya mengikuti direction, kalo direction horizontal ya di kanan. kalo vertikan ya di bawah
            spacing: 10, //jarak antar widget, tergantung direction.
            runSpacing:
                10, //jarak antar baris, tergantung direction. (kebalikannya spacing)
            runAlignment: WrapAlignment
                .end, //arah bungkusan nya vertikal karena default wrap adalah horizontal
            crossAxisAlignment:
                WrapCrossAlignment.center, //arah dari widgetnya.
            children: List.generate(
                8,
                (index) => Container(
                      width: index % 2 == 0 ? 200 : 150,
                      height: index % 2 == 0 ? 200 : 150,
                      color: index % 2 == 0 ? Colors.red : Colors.green,
                      child: Center(
                        child: Text(
                          index.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        ),
                      ),
                    )),
          ),
        ));
  }
}
