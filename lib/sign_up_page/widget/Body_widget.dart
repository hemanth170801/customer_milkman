import 'package:customer_milkman/sign_up_page/registration_page_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'gender_widget.dart';

class BodyWidget1 extends StatelessWidget {
  const BodyWidget1 ({super.key});

  @override
  Widget build(BuildContext context) {
    final isDataFetching =
    context.select<RegistrationProvider, bool>((p) => p.isDataFetching);

    if (isDataFetching) {
      return const Center(child: CircularProgressIndicator());
    }
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
        child: Column(
          children: [
            const _FirstNameInputWidget(),
            SizedBox(height: 2.h,),
            const _LastNameInputWidget(),
            SizedBox(height: 2.h,),
            const MobInputWidget(),
            SizedBox(height: 2.h,),
            const _DateOfBirthInputWidget(),
            SizedBox(height: 2.h,),
            const GenderInputWidget(),
            //const ButtonWidget(),


            // Other widgets...
          ],
        ),
      ),
    );







    // return Padding(
    //   padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
    //   child: Column(
    //     children: [
    //       //SizedBox(height: 2.h),
    //       // const MobInputWidget(),
    //       // SizedBox(height: 2.h),
    //       const _FirstNameInputWidget(),
    //       SizedBox(height: 2.h),
    //       const _LastNameInputWidget(),
    //       SizedBox(height: 2.h),
    //       const MobInputWidget(),
    //       SizedBox(height: 2.h),
    //       const _DateOfBirthInputWidget(),
    //       SizedBox(height: 2.h),
    //       const GenderInputWidget(),
    //       SizedBox(height: 2.h),
    //
    //     ],
    //   ),
    // );
  }
}
class MobInputWidget extends StatelessWidget {
  const MobInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<RegistrationProvider>();
    final pnumberErrormsg =
    context.select<RegistrationProvider, String?>((p) => p.pnumberErrormsg);

    return TextField(
      autofocus: true,
      controller: provider.mobCtrl,
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(10),
      ],
      // style: context.textTheme.headlineSmall?.copyWith(
      //   //fontWeight: FontWeight.bold,
      //   letterSpacing: 1,
      // ),
      onChanged: provider.onMobileNumberChanged,
      decoration:  InputDecoration(
        //prefixIcon: Icon(Icons.phone_android_rounded),
        border:  const OutlineInputBorder(),
        labelText: 'phone number*',
        errorText: pnumberErrormsg,
        //hintText: '7901010135',

      ),
    );
  }
}

class _FirstNameInputWidget extends StatelessWidget {
  const _FirstNameInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<RegistrationProvider>();

    final fNameErrorMsg =
    context.select<RegistrationProvider, String?>((p) => p.fNameErrorMsg);

    return TextField(
      autofocus: !provider.isEditMode,
      controller: provider.fNameCtrl,
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.words,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z\s]+$')),
        LengthLimitingTextInputFormatter(40),
      ],
      onChanged: provider.clearFirstNameErrorMsg,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: 'First Name*',
        errorText: fNameErrorMsg,
      ),
    );
  }
}

class _LastNameInputWidget extends StatelessWidget {
  const _LastNameInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<RegistrationProvider>();
    final lNameErrorMsg =
    context.select<RegistrationProvider, String?>((p) => p.lNameErrorMsg);
    return TextField(
      controller: provider.lNameCtrl,
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.words,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z\s]+$')),
        LengthLimitingTextInputFormatter(40),
      ],
      onChanged: provider.clearLastNameErrorMsg,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: 'Last Name*',
        errorText: lNameErrorMsg,
      ),
    );
  }
}


class _DateOfBirthInputWidget extends StatelessWidget {
  const _DateOfBirthInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<RegistrationProvider>();

    final dobErrorMsg =
    context.select<RegistrationProvider, String?>((p) => p.dobErrorMsg);

    return TextFormField(
      readOnly: true,
      controller: provider.dobCtrl,
      onTap: () => provider.pickDateOfBirth(context),
      decoration: InputDecoration(
        labelText: 'Date Of Birth*',
        errorText: dobErrorMsg,
        border: const OutlineInputBorder(),
        suffixIcon: const Icon(Icons.date_range),
      ),
    );
  }



}