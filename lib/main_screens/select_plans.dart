// import 'package:customer_milkman/main_screens/plans_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
//
// class SelectPlans extends StatefulWidget {
//   const SelectPlans({super.key});
//
//   @override
//   State<SelectPlans> createState() => _SelectPlansState();
// }
//
// class _SelectPlansState extends State<SelectPlans> {
//   DateTime? fromDate;
//   DateTime? toDate;
//
//   bool isEditing = false;
//   String selectedMilk = 'Milk Name';
//   int selectedQuantity = 1;
//   String selectedSchedule = 'Daily'; // Initial schedule selection
//
//   Future<void> _selectFromDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: fromDate ?? DateTime.now(),
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2500),
//     );
//     if (picked != null && picked != fromDate) {
//       setState(() {
//         fromDate = picked;
//       });
//     }
//   }
//
//   Future<void> _selectToDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: toDate ?? DateTime.now(),
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2500),
//     );
//     if (picked != null && picked != toDate) {
//       setState(() {
//         toDate = picked;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Select Plans'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             const Text('From Date:'),
//             const SizedBox(height: 8),
//             InkWell(
//               onTap: () => _selectFromDate(context),
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.black),
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//                 padding: const EdgeInsets.all(8),
//                 child: Row(
//                   children: [
//                     const Icon(Icons.calendar_today),
//                     const SizedBox(width: 8),
//                     Text(fromDate != null
//                         ? '${fromDate!.day}/${fromDate!.month}/${fromDate!.year}'
//                         : 'Select From Date'),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),
//             const Text('To Date:'),
//             const SizedBox(height: 8),
//             InkWell(
//               onTap: () => _selectToDate(context),
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.black),
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//                 padding: const EdgeInsets.all(8),
//                 child: Row(
//                   children: [
//                     const Icon(Icons.calendar_today),
//                     const SizedBox(width: 8),
//                     Text(toDate != null
//                         ? '${toDate!.day}/${toDate!.month}/${toDate!.year}'
//                         : 'Select To Date'),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),
//             const Text('Scheduled:'),
//             const SizedBox(height: 8),
//             DropdownButton<String>(
//               value: selectedSchedule,
//               onChanged: (String? newValue) {
//                 setState(() {
//                   selectedSchedule = newValue!;
//                 });
//               },
//               items: <String>[
//                 'Daily',
//                 'Alternate Days',
//                 'Weekdays',
//                 'Weekends',
//                 'Fort Night'
//               ].map<DropdownMenuItem<String>>((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(value),
//                 );
//               }).toList(),
//             ),
//             ButtonWidget(
//               fromDate: fromDate,
//               toDate: toDate,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ButtonWidget extends StatelessWidget {
//   const ButtonWidget({super.key, required this.fromDate, required this.toDate});
//
//   final DateTime? fromDate;
//   final DateTime? toDate;
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: EdgeInsets.symmetric(
//           horizontal: 25.w,
//         ),
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 50,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 if (fromDate != null && toDate != null) {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => PlansScreen(
//                         selectedFromDate: fromDate!,
//                         selectedToDate: toDate!,
//                       ),
//                     ),
//                   );
//                   //Get.to(()=>PlansScreen(selectedFromDate: fromDate!, selectedToDate: toDate!));
//                 } else {}
//               },
//               child: const Text('Add to Plans'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
// import 'package:flutter/material.dart';
//
//
//
// class DateRangePickerDemo extends StatefulWidget {
//   @override
//   _DateRangePickerDemoState createState() => _DateRangePickerDemoState();
// }
//
// class _DateRangePickerDemoState extends State<DateRangePickerDemo> {
//   DateTime fromDate = DateTime.now();
//   DateTime toDate = DateTime.now().add(Duration(days: 7));
//
//   Future<void> _selectDateRange(BuildContext context) async {
//     final DateTimeRange? picked = await showDateRangePicker(
//       context: context,
//       firstDate: DateTime(2020),
//       lastDate: DateTime(2030),
//       initialDateRange: DateTimeRange(start: fromDate, end: toDate),
//     );
//
//     if (picked != null && picked != DateTimeRange(start: fromDate, end: toDate)) {
//       setState(() {
//         fromDate = picked.start;
//         toDate = picked.end;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text('Date Range Picker Demo'),
//       // ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text('From: ${fromDate.toString().substring(0, 10)}'),
//             SizedBox(height: 20),
//             Text('To: ${toDate.toString().substring(0, 10)}'),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => _selectDateRange(context),
//               child: Text('Select Date Range'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
