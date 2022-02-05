import 'dart:convert';

import 'package:flutter/foundation.dart';

final cities = [
  "Badulla",
  "Colombo",
  "Sri Lanka",
  "Kandy",
  "Kottawa",
  "Kotte",
  "Kohonawala",
  "Balangoda",
  "Ballaketuwa",
  "Bagawantalawa",
];

class Abc {
  String aaaa;
  List<String> ggg;
  int ddddd;
  Abc({
    required this.aaaa,
    required this.ggg,
    required this.ddddd,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Abc &&
        other.aaaa == aaaa &&
        listEquals(other.ggg, ggg) &&
        other.ddddd == ddddd;
  }

  @override
  int get hashCode => aaaa.hashCode ^ ggg.hashCode ^ ddddd.hashCode;
}
