import 'package:customer_milkman/enter_mob_number/mod_page_widget.dart';
import 'package:customer_milkman/sign_up_page/registration_page.dart';

import 'package:flutter/material.dart';

//import '../../enter_mob_number/mod_page_widget.dart';

class WelcomeProvider extends ChangeNotifier {
  bool _isLoggedIn = false;
  bool _isEditing = false;

  bool get isLoggedIn => _isLoggedIn;
  bool get isEditing => _isEditing;

  void login(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const EnterMobNumPage()),
    );

    _isLoggedIn = true;
    _isEditing=true;
    notifyListeners();
  }

  void signUp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegistrationPage(isEditMode: false,)),
    );

    _isLoggedIn = false;
    _isEditing=false;
    notifyListeners();
  }

}