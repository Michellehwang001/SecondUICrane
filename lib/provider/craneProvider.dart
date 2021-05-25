import 'package:flutter/material.dart';

class CraneProvider with ChangeNotifier {
  String _selectDate = 'Select Dates';
  bool _isDone = false;

  String get selectDate => _selectDate;
  bool get isDone => _isDone;

  inputDate(String value) {
    _selectDate = value;
    _isDone = true;
    notifyListeners();
  }
}