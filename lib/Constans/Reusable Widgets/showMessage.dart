import 'package:flutter/material.dart';
import 'package:passgeni/Constans/App%20Colors/appColors.dart';
import 'package:passgeni/Constans/Reusable%20Widgets/text.dart';

showMessage(context, String data, Color color) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    duration: const Duration(seconds: 3),
    content: text(
        data: data,
        fs: 18,
        textColor: appColors.bgColor,
        fw: FontWeight.w600),
    backgroundColor: color,
  ));
}
