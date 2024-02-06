import 'package:dob/sign_up_page/registration_page_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';




class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<RegistrationProvider>();

    final isSubmittingData =
    context.select<RegistrationProvider, bool>((p) => p.isSubmittingData);

    final isDataFetching =
    context.select<RegistrationProvider, bool>((p) => p.isDataFetching);

    return AppBar(
      //title: Text(provider.isEditMode ? 'Update Details' : 'Registration Details'),
      title: const Text('Registration '),
      actions: [
        if (!isDataFetching) ...{
          isSubmittingData
              ? const CircularProgressIndicator()
               : const _ButtonWidget(),
        },
        SizedBox(width: 4.w),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ButtonWidget extends StatelessWidget {
  const _ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<RegistrationProvider>();

    // return Padding(
    //   padding: EdgeInsets.symmetric(vertical: 0.5.h),
    //   child: FilledButton(
    //     onPressed: provider.saveOrUpdateDetails,
    //     //primary: Colors.purpleAccent[400],
    //     child: Padding(
    //       padding: EdgeInsets.symmetric(horizontal: 4.w),
    //       child: Text(provider.isEditMode ? ' update' : 'Sign_up'),
    //
    //     ),
    //   ),
    // );
    final isLoading =
    context.select<RegistrationProvider, bool>((p) => p.isLoading);

    if (isLoading) {
      return const Align(
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      );
    }
    // return ElevatedButton(
    //   onPressed: provider.saveOrUpdateDetails,
    //   style: ElevatedButton.styleFrom(
    //     primary: Colors.purpleAccent, // Set background color
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(8.0), // Set border radius
    //     ),
    //   ),
    //   child: Padding(
    //     padding: EdgeInsets.symmetric(vertical: 0.5.h, horizontal: 4.w),
    //     child: Text(
    //       provider.isEditMode ? 'Update' : 'Register',
    //       style: TextStyle(color: Colors.white), // Set the text color
    //     ),
    //   ),
    // );
    return Container(
      margin: const EdgeInsets.all(8.0), // Add margin as needed
      child: ElevatedButton(
        onPressed: provider.saveOrUpdateDetails,
        style: ElevatedButton.styleFrom(
          primary: Colors.greenAccent, // Set background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), // Set border radius
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0.5.h, horizontal: 4.w),
          child: const Text(
            //provider.isEditMode ? 'Update' : 'Register',
              'Register',
            style: TextStyle(color: Colors.white), // Set the text color
          ),
        ),
      ),
    );





  }
}