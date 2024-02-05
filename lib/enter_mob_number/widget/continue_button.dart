import 'package:dob/enter_mob_number/login_provider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class ContinueButtonWidget extends StatelessWidget {
  const ContinueButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isContinueButtonVisible = context
        .select<EnterMobNumProvider, bool>((p) => p.isContinueButtonVisible);

    if (!isContinueButtonVisible) {
      return const SizedBox.shrink();
    }

    final isLoading =
    context.select<EnterMobNumProvider, bool>((p) => p.isLoading);

    if (isLoading) {
      return const Align(
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      );
    }

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => context.read<EnterMobNumProvider>().onContinue(context),
        child: const Text('Continue'),
      ),
    );
  }
}
