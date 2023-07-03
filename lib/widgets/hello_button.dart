import 'package:flutter/material.dart';

class HelloButton extends StatelessWidget {
  const HelloButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 40,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 243, 95, 144),
        borderRadius: BorderRadius.circular(10)
      ),
      child: const Center(child: Text('Hello All', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),)),
    );

  }
}
