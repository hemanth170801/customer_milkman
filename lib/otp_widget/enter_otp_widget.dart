import 'package:customer_milkman/otp_widget/widget/otp_body_widget.dart';
import 'package:customer_milkman/theme/widget/keyborad_widget.dart';
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
      create: (_) => EnterOtpProvider(context,mobNumber: mobNumber),
      child:  KeyboardWidget(
        child: Scaffold(
          appBar: AppBar(),
          body: const BodyWidget(),
        ),
      ),
    );
  }
}