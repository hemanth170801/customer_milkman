import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class DropDownProvider extends ChangeNotifier{
  // final dropdown =TextEditingController();


  final TextEditingController dropdown = TextEditingController();
  final bool isEditMode;
  String? get selectedGender => _selectedGender;
  String? _selectedGender;
  String? get genderErrorMsg => _genderErrorMsg;
  String? _genderErrorMsg;

  DropDownProvider({required this.isEditMode}) {
    if (isEditMode) {
      //_fetchDetails();
    }
  }
  void selectGender(String? selectedGender) {
    if (selectedGender == null) {
      return;
    }
    _selectedGender = selectedGender;
    _genderErrorMsg = null;
    notifyListeners();
  }

  }


