import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetText extends StatelessWidget {
  const WidgetText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Text WIdget"),
        ),
        body: const Center(
          child: SizedBox(
            width: 200,
            child: Text(
                "Halo, Fahmi Azzuhri Efki sedang belajar text widget flutter",
                textAlign: TextAlign.justify,
                maxLines: 2,
                overflow: TextOverflow.ellipsis, //biar ada titik tiga nya
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red,
                    decorationThickness: 4)),
          ),
        ));
  }
}
