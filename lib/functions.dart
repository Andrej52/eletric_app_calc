import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter/services.dart';

double calc_diam(type, data) {
  var diameter = data[0];
  var radius = pow((diameter / 2), 2);
  double area = pi * radius;

  if (data != null) {
    type == "solid" ? area : area = area * 0.8;
  }

  return area;
}

double calc_Usage(type, data) {
  var var1 = data[0]; // Voltage
  var var2 = data[1]; // Current
  var var3 = data[2]; // Power
  double result = 0;

  if (type == "power_usage") {
    if (var1 == 0) {
      result = var1 * var3;
    } else if (var2 == 0) {
      result = var2 / var1;
    } else if (var3 == 0) {
      result = var2 * var1;
    }
  } else {
    var2 == 0 ? result = (var1 / var2) : result;
  }
  return result;
}

double calc_resistance(type, data) {
  double result = 0;

  for (var i = 0; i < data.length; i++) {
    if (type == "serial") {
      double tmp = data[i] + data[i + 1];
      result = tmp + result;
    } else if (type == "parallel") {
      double tmp = (1 / data[i]) + (1 / data[i + 1]);
      result = tmp + result;
    }
  }
  return result;
}

double suitable_wire() {
  List array = [];
  double match = 0;
  //Map<String, dynamic> wireprop = jsonDecode(jsonString);
  File('resources/WireCap.json').readAsString();
  return match;
}

void readJson()  {
  final Future<String> response =  rootBundle.loadString('assets/WriteCap.json');
  final data = json.decode(response as String);
}
/*

*/