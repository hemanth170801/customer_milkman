import 'package:dob/extensions/build_context.dart';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'continue_button.dart';
import 'mob_input_text.dart';

class BodyWidgete extends StatelessWidget {
  const BodyWidgete({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 4.w,vertical: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 4.h),
          Icon(
            Icons.flutter_dash,
            size: 42.sp,
          ),
          // SizedBox(height: 4.h),
          // Text(
          //   'Welcome to \nMilk Man',
          //   style: context.textTheme.displaySmall,
          // ),
          SizedBox(height: 1.h),
          Text(
            'Enter your phone number',
            style: context.textTheme.headlineSmall,
          ),
          SizedBox(height: 4.h),
          const MobInputWidget(),
          const Spacer(),
          const ContinueButtonWidget(),
        ],
      ),
    );
  }
}