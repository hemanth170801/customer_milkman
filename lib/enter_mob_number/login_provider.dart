//import 'package:dob/otp_widget/enter_otp_widget.dart';
import 'package:customer_milkman/otp_widget/enter_otp_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:logging/logging.dart';

class EnterMobNumProvider extends ChangeNotifier {
  // final authService = getIt<AuthService>();
  // final navService = getIt<NavService>();
  // final log = Logger('EnterMobNumProvider');

  final mobCtrl = TextEditingController();

  bool get isContinueButtonVisible => mobCtrl.text.length == 10;

  bool get isLoading => _isLoading;
  var _isLoading = false;

  EnterMobNumProvider();

  void onMobileNumberChanged(String _) {
    notifyListeners();
  }
  void onContinue (BuildContext context) {
    _isLoading = true;
    notifyListeners();

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const EnterOtpPage(mobNumber: 'mobNumber',)));

  }



  //void onContinue() {

  // _isLoading = true;
  // notifyListeners();
  //   final mobileNumber = mobCtrl.text;
  //   // final currentContext = navService.nav.context;
  //
  //   try {
  //     await authService.signInWithOtp(mobileNumber: mobileNumber);
  //     log.info('OTP has been sent to mobile number: $mobileNumber');
  //
  //     /// Close keyboard and nav to [EnterOtpPage]
  //     currentContext.unfocus();
  //
  //     navService.nav.pushNamed(EnterOtpPage.routeName, arguments: mobileNumber);
  //   } catch (e, st) {
  //     log.severe(
  //       'Error while triggering OTP in login flow with mobile number: $mobileNumber',
  //       e,
  //       st,
  //     );
  //     // navService.nav.context.showErrorDialog(errorMsg: e.toString());
  //     currentContext.showErrorDialog(errorMsg: e.toString());
  //
  //   }
  //   _isLoading = false;
  //   notifyListeners();
  //
  // }
  //
  @override
  void dispose() {
    mobCtrl.dispose();
    super.dispose();
  }
}