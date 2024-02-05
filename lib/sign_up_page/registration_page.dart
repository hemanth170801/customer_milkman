import 'package:dob/otp_widget/widget/index.dart';
import 'package:dob/sign_up_page/registration_page_provider.dart';
import 'package:dob/sign_up_page/widget/Body_widget.dart';
import 'package:dob/sign_up_page/widget/app_bar.dart';
import 'package:dob/theme/widget/keyborad_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({
    super.key,
    required this.isEditMode,
  });

  static const routeName = '/registration-page';
  final bool isEditMode;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RegistrationProvider(isEditMode: isEditMode),
      child: const KeyboardWidget(
        child: Scaffold(
          appBar: AppBarWidget(),
          body: BodyWidget1(),
        ),
      ),
    );
  }
}
