import 'package:dob/enter_mob_number/widget/body_widget.dart';
import 'package:dob/theme/widget/keyborad_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login_provider.dart';

class EnterMobNumPage extends StatelessWidget {
  const EnterMobNumPage({super.key});

  static const routeName = '/enter-mob-num-page';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => EnterMobNumProvider(),
      child: const KeyboardWidget(
        child: Scaffold(
          body: BodyWidgete(),
        ),
      ),
    );
  }
}
