import 'package:customer_milkman/enter_mob_number/login_provider.dart';
import 'package:customer_milkman/extensions/build_context.dart';
// import 'package:dob/enter_mob_number/login_provider.dart';
// import 'package:dob/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';


class MobInputWidget extends StatelessWidget {
  const MobInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<EnterMobNumProvider>();

    return TextField(
      autofocus: true,
      controller: provider.mobCtrl,
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(10),
      ],
      style: context.textTheme.headlineSmall?.copyWith(
        fontWeight: FontWeight.bold,
        letterSpacing: 3,
      ),
      onChanged: provider.onMobileNumberChanged,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.phone_android_rounded),
        border: OutlineInputBorder(),
        hintText: '7901010135',
      ),
    );
  }
}