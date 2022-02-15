import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showFlutterToastWidget({required String msg}) {
  Fluttertoast.cancel();
  Fluttertoast.showToast(
    msg: msg,
    fontSize: 18,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.red,
    textColor: Colors.white,
  );
}
