// import 'dart:async';
// import 'dart:js';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:logging/logging.dart';
// import 'package:otp_text_field/otp_field.dart';
//
// import '../main_screens/customer_home.dart';
//
// class EnterOtpProvider extends ChangeNotifier {
//
//   // final authService = getIt<AuthService>();
//   // final navService = getIt<NavService>();
//   // final userDetailsService = getIt<UserDetailsService>();
//   final log = Logger('EnterOtpProvider');
//
//   final otpCtrl = OtpFieldController();
//   BuildContext context;
//   EnterOtpProvider(this.context, this.mobNumber){
//     _startTimer();
//   }
//
//   bool get isLoading => _isLoading;
//   var _isLoading = false;
//   int get otpResendCount =>_otpResendCount;
//   var _otpResendCount = 20;
//   Timer? _countdownTimer;
//
//   final String mobNumber;
//
//   // EnterOtpProvider({required this.mobNumber}){
//   //   _startTimer();
//   //
//   //
//   // }
//   void _startTimer(){
//     _otpResendCount=20;
//     notifyListeners();
//     _countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       _otpResendCount --;
//       notifyListeners();
//       if (_otpResendCount==0){
//         _countdownTimer?.cancel();
//       }
//     });
//   }
//
//   // void onVerifyOtp(String otp) async {
//   //   // _isLoading = true;
//   //   // notifyListeners();
//   //   //
//   //   // try {
//   //   //   await authService.verifyOtp(mobileNumber: mobNumber, otp: otp);
//   //   // } catch (e, st) {
//   //   //   log.severe(
//   //   //     'Error while verifying OTP in login flow with mobile number: $mobNumber',
//   //   //     e,
//   //   //     st,
//   //   //   );
//   //   //   navService.nav.context.showErrorDialog(errorMsg: e.toString());
//   //   // }
//   //   //
//   //   // final isDataAvailable=await userDetailsService.isDataAvailable();
//   //   //
//   //   // if (authService.isSignIn() && isDataAvailable) {
//   //   //   navService.nav.pushNamedAndRemoveUntil(
//   //   //     HomePage.routeName,
//   //   //         (Route<dynamic> route) => false,
//   //   //   );
//   //   // }else if(authService.isSignIn() && !isDataAvailable){
//   //   //   navService.nav.pushNamedAndRemoveUntil(
//   //   //     RegistrationPage.routeName,
//   //   //         (Route<dynamic> route) => false,
//   //   //   );
//   //   // } else {
//   //   //   _isLoading = false;
//   //   //   notifyListeners();
//   //   // }
//   // }
//   void onVerifyOtp(String otp,) async {
//     _isLoading = true;
//     notifyListeners();
//
//     try {
//       // Simulate OTP verification delay
//       await Future.delayed(const Duration(seconds: 2));
//
//       // Replace this line with your actual OTP verification logic
//       final String defaultOtp = '1234';
//
//       if (otp == defaultOtp) {
//         Navigator.push(
//           context as BuildContext,
//           MaterialPageRoute(builder: (context) => const CustomerHomeScreen()),
//         );
//         print('OTP Verified. Redirecting to home page...');
//       } else {
//         // Handle incorrect OTP
//         print('Incorrect OTP. Please try again.');
//       }
//     } catch (e, st) {
//       log.severe(
//         'Error while verifying OTP in login flow with mobile number: $mobNumber',
//         e,
//         st,
//       );
//       // Uncomment and replace with your actual navigation service logic
//       // navService.nav.context.showErrorDialog(errorMsg: e.toString());
//     } finally {
//       _isLoading = false;
//       notifyListeners();
//     }
//   }
//   void onResendOtp(){
//     // /*
//     // authService.resendOtp is not working as expected
//     // */
//     // // authService.resendOtp(mobileNumber: mobNumber);
//     //authService.signInWithOtp(mobileNumber:mobNumber );
//     _startTimer();
//
//   }
//   @override
//   void dispose() {
//     _countdownTimer?.cancel();
//     super.dispose();
//   }
// }
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:otp_text_field/otp_field.dart';

import '../main_screens/customer_home.dart';

class EnterOtpProvider extends ChangeNotifier {
  final log = Logger('EnterOtpProvider');

  final otpCtrl = OtpFieldController();
  BuildContext context;

  EnterOtpProvider(this.context, {required this.mobNumber}) {
    _startTimer();
  }


  bool get isLoading => _isLoading;
  var _isLoading = false;
  int get otpResendCount =>_otpResendCount;
  var _otpResendCount = 20;
  Timer? _countdownTimer;

  final String mobNumber;

  void _startTimer(){
    _otpResendCount=20;
    notifyListeners();
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _otpResendCount --;
      notifyListeners();
      if (_otpResendCount==0){
        _countdownTimer?.cancel();
      }
    });
  }

  void onVerifyOtp(String otp) async {
    _isLoading = true;
    notifyListeners();

    try {
      await Future.delayed(const Duration(seconds: 2));
      final String defaultOtp = '1234';

      if (otp == defaultOtp) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CustomerHomeScreen()),
        );
        print('OTP Verified. Redirecting to home page...');
      } else {
        // Handle incorrect OTP
        print('Incorrect OTP. Please try again.');
      }
    } catch (e, st) {
      log.severe(
        'Error while verifying OTP in login flow with mobile number: $mobNumber',
        e,
        st,
      );
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void onResendOtp(){
    _startTimer();
  }

  @override
  void dispose() {
    _countdownTimer?.cancel();
    super.dispose();
  }
}
