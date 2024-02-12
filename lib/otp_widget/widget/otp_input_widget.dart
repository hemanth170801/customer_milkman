import 'package:customer_milkman/extensions/build_context.dart';
import 'package:customer_milkman/otp_widget/enter_otp_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class OtpInputWidget extends StatelessWidget {
  const OtpInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<EnterOtpProvider>();

    return OTPTextField(
      controller: provider.otpCtrl,
      keyboardType: TextInputType.number,
      inputFormatter: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
      ],
      length: 4,
      width: double.infinity,
      fieldWidth: 10.w,
      textFieldAlignment: MainAxisAlignment.start,
      spaceBetween: 2.w,
      fieldStyle: FieldStyle.underline,
      style: context.textTheme.bodyLarge!,
      otpFieldStyle: OtpFieldStyle(
        backgroundColor: Colors.transparent,
        borderColor: context.colorScheme.onSurfaceVariant,
        enabledBorderColor: context.colorScheme.onSurfaceVariant,
        focusBorderColor: context.colorScheme.primary,
      ),
      onCompleted: provider.onVerifyOtp,
      onChanged: (_) {},
    );
  }
}