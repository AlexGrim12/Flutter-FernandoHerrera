

import 'package:flutter/material.dart';

class AppTheme {
  
  ThemeData getTheme() => ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );


}