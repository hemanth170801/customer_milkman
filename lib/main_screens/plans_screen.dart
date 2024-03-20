// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
//
// class PlansScreen extends StatefulWidget {
//   final DateTime selectedFromDate;
//   final DateTime selectedToDate;
//
//   const PlansScreen({
//     super.key,
//     required this.selectedFromDate,
//     required this.selectedToDate,
//   });
//
//   @override
//   _PlansScreenState createState() => _PlansScreenState();
// }
// class _PlansScreenState extends State<PlansScreen> {
//   late DateTime _selectedDate;
//
//   @override
//   void initState() {
//     super.initState();
//     _selectedDate = widget.selectedFromDate;
//    _selectedDate=widget.selectedToDate;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: const Text('Selected Plans'),
//       // ),
//       body: Column(
//         children: [
//           _buildDateList(),
//           const SizedBox(height: 16),
//           if (_selectedDate != null) ...[
//             Container(
//               padding: const EdgeInsets.all(8),
//               color: Colors.purple,
//               width: 1000.h,
//               child: Center(
//                 child: Text(
//                   ' ${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
//                   style: const TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ],
//       ),
//     );
//   }
//
//   Widget _buildDateList() {
//     return SizedBox(
//       height: 60,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount:
//             widget.selectedToDate.difference(widget.selectedFromDate).inDays +
//                 1,
//         itemBuilder: (context, index) {
//           DateTime date = widget.selectedFromDate.add(Duration(days: index));
//           DateTime date1=widget.selectedToDate.add(Duration(days: index));
//           return InkWell(
//             onTap: () {
//               setState(() {
//                 _selectedDate = date;
//                // _selectedDate=date1;
//
//               });
//             },
//             child: Container(
//               width: 60,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                 color: _selectedDate.day == date.day
//                     ? Colors.purple
//                     : Colors.orangeAccent.shade100,
//                 borderRadius: BorderRadius.circular(8),
//
//               ),
//               child: Text(
//                 '${date.day}',
//                 semanticsLabel: '${date1.day}',
//                 style: TextStyle(
//                   color: _selectedDate.day == date.day
//                       ? Colors.white
//                       : Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlansScreen extends StatelessWidget {
  final DateTime selectedFromDate;
  final DateTime selectedToDate;

  const PlansScreen({
    Key? key,
    required this.selectedFromDate,
    required this.selectedToDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildDateList(selectedFromDate, selectedToDate),
      ],
    );
  }

  Widget _buildDateList(DateTime fromDate, DateTime toDate) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: toDate.difference(fromDate).inDays + 1,
        itemBuilder: (context, index) {
          DateTime date = fromDate.add(Duration(days: index));
          return InkWell(
            onTap: () {
              // Handle onTap if needed
            },
            child: Container(
              width: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.orangeAccent.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                '${date.day}',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}