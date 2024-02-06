// import 'package:dob/extensions/build_context.dart';
//
// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
//
// import 'continue_button.dart';
// import 'mob_input_text.dart';
//
// class BodyWidgete extends StatelessWidget {
//   const BodyWidgete({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding:  EdgeInsets.symmetric(horizontal: 4.w,vertical: 4.h),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 4.h),
//           Text(
//           'Get Started! ',
//             style: context.textTheme.headlineSmall,
//           ),
//           // Icon(
//           //   Icons.flutter_dash,
//           //   size: 42.sp,
//           // ),
//           // SizedBox(height: 4.h),
//           // Text(
//           //   'Welcome to \nMilk Man',
//           //   style: context.textTheme.displaySmall,
//           // ),
//           SizedBox(height: 1.h),
//           Text(
//             'Enter your phone number',
//             style: context.textTheme.headlineSmall,
//           ),
//           SizedBox(height: 4.h),
//           const MobInputWidget(),
//           const Spacer(),
//           const ContinueButtonWidget(),
//         ],
//       ),
//     );
//   }
// }
import 'package:dob/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'continue_button.dart';
import 'mob_input_text.dart';

class BodyWidgete extends StatefulWidget {
  const BodyWidgete({Key? key}) : super(key: key);

  @override
  _BodyWidgeteState createState() => _BodyWidgeteState();
}

class _BodyWidgeteState extends State<BodyWidgete> {
  String getStartedText = '';

  @override
  void initState() {
    super.initState();
    _animateGetStartedText();
  }

  Future<void> _animateGetStartedText() async {
    const String text = 'Get Started!';

    for (int i = 0; i < text.length; i++) {
      await Future.delayed(const Duration(milliseconds: 100));
      setState(() {
        getStartedText = text.substring(0, i + 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 4.h),
          Text(
            getStartedText,
            style: TextStyle(
              color: Colors.green, // Set the text color to green
              fontSize: 25.0.sp, // Set the font size as needed
              fontWeight: FontWeight.bold,
            ),
            //style: context.textTheme.headlineSmall,
          ),
          SizedBox(height: 2.h),
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
