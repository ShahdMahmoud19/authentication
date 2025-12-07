import 'package:flutter/material.dart';

class Containerreuse extends StatelessWidget {
  const Containerreuse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(255, 237, 232, 232),
        border: Border.all(color: const Color.fromARGB(255, 197, 196, 196)),
      ),
    );
  }
}
