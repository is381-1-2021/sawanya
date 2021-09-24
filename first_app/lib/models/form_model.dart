import 'package:flutter/material.dart';

class FormModel extends ChangeNotifier {
  String? _firstname;
  String? _lastname;
  int? _age;
  get firstName => this._firstname;

  set firstName(value) {
    this._firstname = value;
    notifyListeners();
  }

  get lastName => this._lastname;

  set lastName(value) {
    this._lastname = value;
    notifyListeners();
  }

  get age => this._age;

  set age(value) {
    this._age = value;
    notifyListeners();
  }
}
