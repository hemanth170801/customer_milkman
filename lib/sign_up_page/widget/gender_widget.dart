import 'package:dob/sign_up_page/registration_page_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GenderInputWidget extends StatelessWidget {
  const GenderInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final genderErrorMsg =
    context.select<RegistrationProvider, String?>((p) => p.genderErrorMsg);

    final selectedGender =
    context.select<RegistrationProvider, String?>((p) => p.selectedGender);

    return DropdownButtonFormField(
      value: selectedGender,
      decoration: InputDecoration(
        labelText: 'Gender',
        border: const OutlineInputBorder(),
        errorText: genderErrorMsg,
      ),
      items: const [
        DropdownMenuItem(
          key: ValueKey('M'),
          value: 'M',
          child: Text('Male'),
        ),
        DropdownMenuItem(
          key: ValueKey('F'),
          value: 'F',
          child: Text('Female'),
        ),
        DropdownMenuItem(
          key: ValueKey('O'),
          value: 'O',
          child: Text('Others'),
        ),
      ],
      onChanged: (gender) =>
          context.read<RegistrationProvider>().selectGender(gender),
    );
  }
}