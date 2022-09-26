// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class Ohm extends StatelessWidget {
  const Ohm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

void ohmslaw()
{
  int r,u,i2;
}