// import 'package:flutter/material.dart';
//
// class GenderDOBProvider with ChangeNotifier {
//   DateTime? _selectedDOB;
//   String? _selectedGender;
//
//   DateTime? get selectedDOB => _selectedDOB;
//   String? get selectedGender => _selectedGender;
//
//   set selectedDOB(DateTime? dob) {
//     _selectedDOB = dob;
//     notifyListeners();
//   }
//
//   set selectedGender(String? gender) {
//     _selectedGender = gender;
//     notifyListeners();
//   }
//
//   Future<void> pickGender(BuildContext context) async {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             ListTile(
//               title: Text('Male'),
//               onTap: () {
//                 selectedGender = 'Male';
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: Text('Female'),
//               onTap: () {
//                 selectedGender = 'Female';
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: Text('Others'),
//               onTap: () {
//                 selectedGender = 'Others';
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
