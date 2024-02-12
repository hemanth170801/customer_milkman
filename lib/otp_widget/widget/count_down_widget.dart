import 'package:customer_milkman/extensions/build_context.dart';
import 'package:customer_milkman/otp_widget/enter_otp_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountDownWidget extends StatelessWidget {
  const CountDownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<EnterOtpProvider>();

    return Row(
      children: [
        Text(
          'Having trouble? ',
          style: context.textTheme.bodyMedium,
        ),
        const SizedBox(width: 10),
        if (provider.otpResendCount == 0) ...{
          TextButton(
            onPressed: () => provider.onResendOtp(),
            child: const Text('Resend'),
          ),
        } else ...{
          Text(
            "You can resend OTP ofter 00: ${provider.otpResendCount} ",
            style: context.textTheme.bodyMedium,
          ),
        },
      ],
    );
  }
}