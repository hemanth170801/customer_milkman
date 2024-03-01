// import 'package:flutter/material.dart';

// class PlansScreen extends StatefulWidget {
//   const PlansScreen({Key? key}) : super(key: key);
//
//   @override
//   State<PlansScreen> createState() => _PlansScreenState();
// }
//
// class _PlansScreenState extends State<PlansScreen> {
//   bool isEditing = false;
//   String selectedMilk = 'Milk Name';
//   int selectedQuantity = 1;
//   String selectedSchedule = 'Daily'; // Initial schedule selection
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Plans'),
//         //leading: Container(),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GestureDetector(
//               onTap: () {
//                 setState(() {
//                   isEditing = !isEditing;
//                 });
//               },
//               child: Container(
//                 padding: EdgeInsets.all(16.0),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.black),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('$selectedMilk - $selectedQuantity'),
//                     Icon(Icons.edit),
//                   ],
//                 ),
//               ),
//             ),
//             if (isEditing)
//               Container(
//                 padding: const EdgeInsets.all(16.0),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.black),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text('Edit Plan'),
//                     const SizedBox(height: 10),
//                     Text('Milk: $selectedMilk'),
//                     const SizedBox(height: 10),
//                     Row(
//                       children: [
//                         const Text('Schedule: '),
//                         DropdownButton<String>(
//                           value: selectedSchedule,
//                           onChanged: (String? newValue) {
//                             setState(() {
//                               selectedSchedule = newValue!;
//                             });
//                           },
//                           items: <String>['Daily', 'Alternate Days', 'Weekdays','Weekends','FortNight']
//                               .map<DropdownMenuItem<String>>((String value) {
//                             return DropdownMenuItem<String>(
//                               value: value,
//                               child: Text(value),
//                             );
//                           }).toList(),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 10),
//                     Row(
//                       children: [
//                         const Text('Quantity: '),
//                         IconButton(
//                           onPressed: () {
//                             setState(() {
//                               if (selectedQuantity > 1) {
//                                 selectedQuantity--;
//                               }
//                             });
//                           },
//                           icon: const Icon(Icons.remove),
//                         ),
//                         Text('$selectedQuantity'),
//                         IconButton(
//                           onPressed: () {
//                             setState(() {
//                               selectedQuantity++;
//                             });
//                           },
//                           icon: Icon(Icons.add),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 20),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         ElevatedButton(
//                           onPressed: () {
//                             setState(() {
//                               isEditing = false;
//                               // Add logic to cancel editing here
//                             });
//                           },
//                           child: const Text('Cancel'),
//                         ),
//                         const SizedBox(width: 10),
//                         ElevatedButton(
//                           onPressed: () {
//                             setState(() {
//                               // Add logic to save changes here
//                             });
//                           },
//                           child: const Text('Save'),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';
//
//
//
// class PlansScreen extends StatefulWidget {
//   @override
//   _PlansScreenState createState() => _PlansScreenState();
// }
//
// class _PlansScreenState extends State<PlansScreen> {
//   DateTime _selectedDate = DateTime.now();
//   CalendarController _calendarController = CalendarController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Milk'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Amul Tazaa 500ML',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8),
//             Text('Scheduled for tomorrow: 1'),
//             SizedBox(height: 16),
//             Row(
//               children: [
//                 _buildFrequencyOption('Daily', true),
//                 _buildFrequencyOption('Weekly', false),
//                 _buildFrequencyOption('Monthly', false),
//               ],
//             ),
//             SizedBox(height: 24),
//             TableCalendar(
//               calendarController: _calendarController,
//               initialSelectedDay: _selectedDate,
//               availableGestures: AvailableGestures.horizontalSwipe,
//               initialCalendarFormat: CalendarFormat.month,
//               calendarStyle: CalendarStyle(
//                 todayColor: Colors.blue,
//                 selectedColor: Colors.green,
//                 markersColor: Colors.red,
//               ),
//               onDaySelected: (date, events, holidays) {
//                 setState(() {
//                   _selectedDate = date;
//                 });
//               },
//             ),
//             SizedBox(height: 24),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Icon(Icons.edit),
//                 Icon(Icons.pause),
//                 Icon(Icons.delete),
//               ],
//             ),
//             SizedBox(height: 24),
//             Row(
//               children: [
//                 Checkbox(value: true, onChanged: (_) {}),
//                 Text('Plan for the next 3 days'),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildFrequencyOption(String text, bool isSelected) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       decoration: BoxDecoration(
//         color: isSelected ? Colors.red : Colors.grey[200],
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Text(
//         text,
//         style: TextStyle(
//           color: isSelected ? Colors.white : Colors.black,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';
//
// class PlansScreenWidget extends StatelessWidget {
//   const PlansScreenWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Milk'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Amul Tazaa 500ML',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8),
//             Text('Scheduled for tomorrow: 1'),
//             SizedBox(height: 16),
//             Row(
//               children: [
//                 _buildFrequencyOption('Daily', true),
//                 _buildFrequencyOption('Weekly', false),
//                 _buildFrequencyOption('Monthly', false),
//               ],
//             ),
//             SizedBox(height: 24),
//             TableCalendar(
//               calendarController: CalendarController(),
//               initialSelectedDay: DateTime.now(),
//               availableGestures: AvailableGestures.horizontalSwipe,
//               initialCalendarFormat: CalendarFormat.month,
//               calendarStyle: CalendarStyle(
//                 todayColor: Colors.blue,
//                 selectedColor: Colors.green,
//                 markersColor: Colors.red,
//               ),
//               onDaySelected: (date, events, holidays) {
//                 // Handle day selection if needed
//               },
//             ),
//             SizedBox(height: 24),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Icon(Icons.edit),
//                 Icon(Icons.pause),
//                 Icon(Icons.delete),
//               ],
//             ),
//             SizedBox(height: 24),
//             Row(
//               children: [
//                 Checkbox(value: true, onChanged: (_) {}),
//                 Text('Plan for the next 3 days'),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildFrequencyOption(String text, bool isSelected) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       decoration: BoxDecoration(
//         color: isSelected ? Colors.red : Colors.grey[200],
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Text(
//         text,
//         style: TextStyle(
//           color: isSelected ? Colors.white : Colors.black,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }
// }


