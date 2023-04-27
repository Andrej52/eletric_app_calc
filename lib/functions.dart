import 'dart:convert';
//import 'dart:io';
import 'dart:math';
import 'package:flutter/services.dart';

// ignore: non_constant_identifier_names
double calc_diam(type, data) {
  var diameter = data[0];
  var radius = pow((diameter / 2), 2);
  double area = pi * radius;

  if (data != null) {
    type == "solid" ? area : area = area * 0.8;
  }
  return area;
}

// ignore: non_constant_identifier_names
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

// ignore: non_constant_identifier_names
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

// ignore: non_constant_identifier_names
double suitable_wire(value) {
  double match = 0;
  var data = readJson("WireCap.json");
  for (var i = 0; i < data.length; i++) {
    if ((data['area'][i] > value) && (data['area'][i + 1] > value)) {
      match = data['wire'][i + 1];
    }
  }
  return match;
}

Map<String, dynamic> readJson(filename) {
  final Future<String> response = rootBundle.loadString('assets/' + filename);
  return json.decode(response as String);
}