import 'package:flutter_web/material.dart';
class CustomBorder{
  static var border = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
    borderSide: BorderSide(width:2,color: Colors.grey,style: BorderStyle.solid)
  );
}