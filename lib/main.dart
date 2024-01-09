import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class GenderDOBProvider with ChangeNotifier {
  DateTime? _selectedDOB;
  String? _selectedGender;

  DateTime? get selectedDOB => _selectedDOB;
  String? get selectedGender => _selectedGender;

  set selectedDOB(DateTime? dob) {
    _selectedDOB = dob;
    notifyListeners();
  }

  set selectedGender(String? gender) {
    _selectedGender = gender;
    notifyListeners();
  }

  Future<void> pickDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      selectedDOB = pickedDate;
    }
  }

  void pickGender(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text('Male'),
              onTap: () {
                selectedGender = 'Male';
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Female'),
              onTap: () {
                selectedGender = 'Female';
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Others'),
              onTap: () {
                selectedGender = 'Others';
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}

class DateOfBirthInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<GenderDOBProvider>();

    return TextField(
      readOnly: true,
      onTap: () async {
        await provider.pickDate(context);
      },
      decoration: InputDecoration(
        labelText: 'Date of Birth',
        suffixIcon: Icon(Icons.calendar_today),
        border: OutlineInputBorder(),
      ),
      controller: TextEditingController(
        text: provider.selectedDOB != null
            ? DateFormat('dd-MM-yyyy').format(provider.selectedDOB!)
            : '',
      ),
    );
  }
}

class GenderSelectionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<GenderDOBProvider>();

    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Gender',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  provider.pickGender(context);
                },
                child: Row(
                  children: [
                    Text(
                      provider.selectedGender ?? '',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GenderDOBProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Registration Page'),
        ),
        body: RegistrationBodyWidget(),
      ),
    );
  }
}

class RegistrationBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DateOfBirthInputWidget(),
          SizedBox(height: 20),
          GenderSelectionWidget(),
          // Add other registration fields or widgets here
        ],
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegistrationPage(),
    );
  }
}
