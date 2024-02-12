import 'package:customer_milkman/Custom_ButtonWidget/widgets/Custom_eleveted_Button.dart';
import 'package:customer_milkman/Custom_ButtonWidget/widgets/custom_outlined_button.dart';
import 'package:customer_milkman/registration/widget/welcome_screen_provider.dart';
import 'package:customer_milkman/theme/widget/custom_button_style.dart';
import 'package:customer_milkman/theme/widget/custom_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class WelcomeButtonsWidget extends StatelessWidget {
  const WelcomeButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal:16, vertical:16),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/company_logos/bg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      constraints: const BoxConstraints.expand(),
      child: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 6.h),
            Icon(
              Icons.flutter_dash,
              size: 52.sp,
            ),
            SizedBox(height: 4.h),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Text(
                'Welcome To \nMilkman',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 8.h),
            CustomOutlinedButton(
              text: "login",
              margin: EdgeInsets.only(right: 2.h),
              buttonStyle: CustomButtonStyles.fillGray,
              buttonTextStyle: CustomTextStyles.titleSmallTeal300,
              onPressed: () {
                // Call the login method using context.read
                context.read<WelcomeProvider>().login(context);
              },
            ),
            SizedBox(height: 2.h),
            CustomElevatedButton(
              text: "signup",
              margin: EdgeInsets.only(right: 2.h),
              buttonStyle: CustomButtonStyles.fillPrimary,
              buttonTextStyle: CustomTextStyles.titleSmallTeal300,
              onPressed: () {
// Call the signUp method using context.read
                context.read<WelcomeProvider>().signUp(context);
              },
            ),


          ],
        ),
      ),
    );

  }
}