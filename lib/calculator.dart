// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calculator extends StatelessWidget {
  final String value;
  static const List<String> selectionvalue = <String>['onewired', 'multiwired'];

  const Calculator({
    Key? key,
    required this.value,
  }) : super(key: key);

//  final input = TextEditingController();

/*

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
 */

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Kalkulacka"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              if (value == "diameter") ...[
                // input field
                TextFormField(
                  controller: TextEditingController(),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                  ],
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'input1',
                  ),
                ),

                // selection of solid or non  solid wire
                DropdownButton(
                  onChanged: (value) {
                    // TO DO
                  },
                  items: selectionvalue
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
              ] // body of diameter
              else if (value == "power_usage" || value == "ohm_law") ...[
                // input for Voltage
                TextFormField(
                  controller: TextEditingController(),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                  ],
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'input1',
                  ),
                ),

                // input for POWER or Resistance
                TextFormField(
                  controller: TextEditingController(),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                  ],
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'input1',
                  ),
                ),

                // input for Current
                TextFormField(
                  controller: TextEditingController(),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                  ],
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'input1',
                  ),
                ),
              ] //body of powerusage
              else if (value == "resistance")...[
                // To DO for by for loop 
              ],// body for serial/parralel resistance
             // FloatingActionButton(onPressed:),
            ], // children
          ),
        ),
      );
}
