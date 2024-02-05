//
// import 'package:dob/enter_mob_number/login_provider.dart';
// //import 'package:dob/enter_mob_number/widget/index.dart';
// import 'package:dob/otp_widget/widget/index.dart';
// //import 'package:dob/registration/widget/welcome_bodywidget.dart';
// import 'package:dob/theme/widget/keyborad_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class WelcomeScreen extends StatelessWidget {
//   const WelcomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  ChangeNotifierProvider(
//       create: (_) => EnterMobNumProvider(),
//       child: const KeyboardWidget(
//         child: Scaffold(
//           body: BodyWidget(),
//         ),
//       ),
//     );
//   }
// }
//
import 'package:dob/registration/widget/welcome_bodywidget.dart';
import 'package:dob/registration/widget/welcome_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'welcome_provider.dart'; // Import the WelcomeProvider

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WelcomeProvider(),
      child: const Scaffold(
        body: WelcomeButtonsWidget(),
      ),
    );
  }
}
