import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: Column(
          children: [
             TextFormField(
                  decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter current',
                ),
              ), 
              TextFormField(
                  decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'voltage',
                ),
              ),
              TextFormField(
                  decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'enter resistance',
                ),
              ),
          ],
        ),
      ),
    );
  }
}

/*
ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
*/