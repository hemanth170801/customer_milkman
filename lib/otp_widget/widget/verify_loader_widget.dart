import 'package:dob/otp_widget/enter_otp_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VerifyLoaderWidget extends StatelessWidget {
  const VerifyLoaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isLoading =
    context.select<EnterOtpProvider, bool>((p) => p.isLoading);

    if (!isLoading) {
      return const SizedBox.shrink();
    }

    return const Align(
      alignment: Alignment.center,
      child: CircularProgressIndicator(),
    );
  }
}
