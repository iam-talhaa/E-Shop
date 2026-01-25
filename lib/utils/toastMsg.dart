

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Utils {

void ToastMsg(message,B_color,F_color){

Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.values[20],
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: B_color,
        textColor: F_color,
        fontSize: 16.0
    );
}
  
}