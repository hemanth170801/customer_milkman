import 'package:dob/extensions/build_context.dart';
import 'package:dob/extensions/index.dart';
import 'package:dob/otp_widget/enter_otp_provider.dart';
import 'package:dob/otp_widget/widget/verify_loader_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'count_down_widget.dart';
import 'otp_input_widget.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<EnterOtpProvider>();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Verify your phone number',
            style: context.textTheme.displaySmall,
          ),
          SizedBox(height: 1.h),
          Text(
            'Enter the OTP sent to +91 ${provider.mobNumber.mobNumberInReadableFormat}',
            style: context.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.h),
          const OtpInputWidget(),
          SizedBox(height: 2.h),
          const CountDownWidget(),
          SizedBox(height: 2.h),
          const VerifyLoaderWidget(),
          const Spacer(),
        ],
      ),
    );
  }
}