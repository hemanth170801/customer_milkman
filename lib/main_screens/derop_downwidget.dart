import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theme/widget/keyborad_widget.dart';
import 'deopdwonwidget_provider.dart';
import 'drop_down_section.dart';

class companywidget extends StatelessWidget {
  const companywidget({
    super.key,
    required this.isEditMode,
  });

  static const routeName = '/registration-page';
  final bool isEditMode;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DropDownProvider(isEditMode: isEditMode),
      child: const KeyboardWidget(
        child: Scaffold(
          //appBar: AppBarWidget(),
          body: DropDownWidget(),
        ),
      ),
    );
  }
}