import 'package:flutter/material.dart';

const kInuptDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(7),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  ),
  filled: true,
  fillColor: Colors.white,
);


const kDesign = BoxDecoration(
  borderRadius:  BorderRadius.all(
    Radius.circular(10),
  ),
);