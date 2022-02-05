import 'package:flutter/material.dart';

InputDecoration textFieldDecorationMethod() {
  return const InputDecoration(
    labelStyle: TextStyle(color: Colors.black, fontSize: 4),
    // hintStyle: TextStyle(color: Colors.black),
    contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(100)),
      borderSide: BorderSide(width: 1, color: Colors.black),
    ),
    hintText: 'Search city',
  );
}
