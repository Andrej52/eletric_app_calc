import 'package:flutter/material.dart';
import 'calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String value = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // button which shows's formula for diameter/ max cord current
              TextButton(
                child: const Text('Zatažitelnost vodičov'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Calculator(value: "diameter")),
                  );
                },
              ),

              // button which shows's formula for diameter/ max cord current
              TextButton(
                child: const Text('Vykon/oddber'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Calculator(value: "power_usage")),
                  );
                },
              ),

              // button which shows's formula for diameter/ max cord current
              TextButton(
                child: const Text("Ohm's_law"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Calculator(value: "ohm_law")),
                  );
                },
              ),

              // button which shows's formula for diameter/ max cord current
              TextButton(
                child: const Text("Odpory"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Calculator(value: "resistance")),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
