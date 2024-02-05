import 'package:dob/enter_mob_number/widget/index.dart';
import 'package:dob/otp_widget/widget/otp_body_widget.dart';
import 'package:dob/theme/widget/keyborad_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'enter_otp_provider.dart';

class EnterOtpPage extends StatelessWidget {
  const EnterOtpPage({
    super.key,
    required this.mobNumber,
  });

  // static const routeName = '/enter-otp-page';
  final String mobNumber;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => EnterOtpProvider(mobNumber: mobNumber),
      child:  KeyboardWidget(
        child: Scaffold(
          appBar: AppBar(),
          body: const BodyWidget(),
        ),
      ),
    );
  }
}
