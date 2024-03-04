// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';
//
// class PlansScreen extends StatefulWidget {
//   const PlansScreen({Key? key}) : super(key: key);
//
//   @override
//   _PlansScreenState createState() => _PlansScreenState();
// }
//
// class _PlansScreenState extends State<PlansScreen> {
//   late CalendarFormat _calendarFormat;
//   late DateTime _focusedDay;
//   late DateTime _selectedDay;
//   List<String> _tasks = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _calendarFormat = CalendarFormat.month;
//     _focusedDay = DateTime.now();
//     _selectedDay = DateTime.now();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Daily Classes and Tasks'),
//       ),
//       body: Column(
//         children: [
//           TableCalendar(
//             calendarFormat: _calendarFormat,
//             focusedDay: _focusedDay,
//             firstDay: DateTime.utc(2022, 1, 1),
//             lastDay: DateTime.now().add(Duration(days: 365 * 10)), // Add 10 years to the current date
//             selectedDayPredicate: (day) {
//               return isSameDay(_selectedDay, day);
//             },
//             onDaySelected: (selectedDay, focusedDay) {
//               setState(() {
//                 _selectedDay = selectedDay;
//                 _focusedDay = focusedDay ?? selectedDay;
//                 if (_focusedDay.isAfter(_selectedDay)) {
//                   _selectedDay = _focusedDay;
//                 }
//               });
//             },
//             onPageChanged: (focusedDay) {
//               setState(() {
//                 _focusedDay = focusedDay;
//                 if (_focusedDay.isAfter(_selectedDay)) {
//                   _selectedDay = _focusedDay;
//                 }
//               });
//             },
//           ),
//           SizedBox(height: 16),
//           if (_selectedDay != null) ...[
//             Text(
//               'Tasks for ${_selectedDay.day}/${_selectedDay.month}/${_selectedDay.year}',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8),
//             Expanded(
//               child: ListView.builder(
//                 shrinkWrap: true,
//                 itemCount: _tasks.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(_tasks[index]),
//                     // Add more details or actions if needed
//                   );
//                 },
//               ),
//             ),
//           ],
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _showAddTaskDialog(context);
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
//
//   Future<void> _showAddTaskDialog(BuildContext context) async {
//     String? newTask = await showDialog<String>(
//       context: context,
//       builder: (context) {
//         String? taskText;
//         return AlertDialog(
//           title: Text('Add New Task'),
//           content: TextField(
//             onChanged: (value) {
//               taskText = value;
//             },
//             decoration: InputDecoration(
//               hintText: 'Enter task',
//             ),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('Cancel'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop(taskText);
//               },
//               child: Text('Add'),
//             ),
//           ],
//         );
//       },
//     );
//
//     if (newTask != null && newTask.isNotEmpty) {
//       setState(() {
//         _tasks.add(newTask!);
//       });
//     }
//   }
// }
// import 'package:flutter/material.dart';
//
// class PlansScreen extends StatefulWidget {
//   const PlansScreen({Key? key}) : super(key: key);
//
//   @override
//   _PlansScreenState createState() => _PlansScreenState();
// }
//
// class _PlansScreenState extends State<PlansScreen> {
//   late DateTime _selectedDate = DateTime.now();
//
//   List<String> _tasks = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _selectedDate = DateTime.now();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Daily Classes and Tasks'),
//       ),
//       body: Column(
//         children: [
//           _buildDateList(),
//           SizedBox(height: 16),
//           if (_selectedDate != null) ...[
//             Text(
//               'Tasks for ${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8),
//             Expanded(
//               child: ListView.builder(
//                 shrinkWrap: true,
//                 itemCount: _tasks.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(_tasks[index]),
//                     // Add more details or actions if needed
//                   );
//                 },
//               ),
//             ),
//           ],
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _showAddTaskDialog(context);
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
//
//   Widget _buildDateList() {
//     return Container(
//       height: 60,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: 31, // Adjust this based on how many dates you want to show
//         itemBuilder: (context, index) {
//           DateTime date = DateTime.now().add(Duration(days: index));
//           return InkWell(
//             onTap: () {
//               setState(() {
//                 _selectedDate = date;
//               });
//             },
//
//             child: Container(
//               width: 60,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                 color: _selectedDate.day == date.day ? Colors.blue : null,
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Text(
//                 '${date.day}',
//                 style: TextStyle(
//                   color: _selectedDate.day == date.day ? Colors.white : Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
//
//   Future<void> _showAddTaskDialog(BuildContext context) async {
//     String? newTask = await showDialog<String>(
//       context: context,
//       builder: (context) {
//         String? taskText;
//         return AlertDialog(
//           title: Text('Add New Task'),
//           content: TextField(
//             onChanged: (value) {
//               taskText = value;
//             },
//             decoration: InputDecoration(
//               hintText: 'Enter task',
//             ),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('Cancel'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop(taskText);
//               },
//               child: Text('Add'),
//             ),
//           ],
//         );
//       },
//     );
//
//     if (newTask != null && newTask.isNotEmpty) {
//       setState(() {
//         _tasks.add(newTask!);
//       });
//     }
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlansScreen extends StatefulWidget {
  final DateTime? selectedFromDate;
  final DateTime? selectedToDate;

  const PlansScreen({Key? key, this.selectedFromDate, this.selectedToDate}) : super(key: key);

  @override
  _PlansScreenState createState() => _PlansScreenState();
}

class _PlansScreenState extends State<PlansScreen> {
  late DateTime _selectedDate;
  DateTime? fromDate; // Add this line
  DateTime? toDate;   // Add this lin

  List<String> _tasks = [];

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    fromDate = widget
        .selectedFromDate; // Initialize fromDate with the selectedFromDate
    toDate = widget.selectedToDate;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Classes and Tasks'),
      ),
      body: Column(
        children: [
          _buildDateList(),
          SizedBox(height: 16),
          if (_selectedDate != null) ...[
            Text(
              'Tasks for ${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _tasks.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_tasks[index]),
                    // Add more details or actions if needed
                  );
                },
              ),
            ),
          ],
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddTaskDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildDateList() {
    return Container(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 31, // Adjust this based on how many dates you want to show
        itemBuilder: (context, index) {
          DateTime date = DateTime.now().add(Duration(days: index));
          return InkWell(
            onTap: () {
              setState(() {
                _selectedDate = date;
              });
            },
            child: Container(
              width: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: _selectedDate.day == date.day ? Colors.blue : null,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                '${date.day}',
                style: TextStyle(
                  color: _selectedDate.day == date.day ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _showAddTaskDialog(BuildContext context) async {
    String? newTask = await showDialog<String>(
      context: context,
      builder: (context) {
        String? taskText;
        return AlertDialog(
          title: Text('Add New Task'),
          content: TextField(
            onChanged: (value) {
              taskText = value;
            },
            decoration: InputDecoration(
              hintText: 'Enter task',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(taskText);
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );

    if (newTask != null && newTask.isNotEmpty) {
      setState(() {
        _tasks.add(newTask!);
      });
    }
  }
}