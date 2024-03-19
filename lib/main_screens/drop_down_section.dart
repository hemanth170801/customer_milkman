
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:sizer/sizer.dart';

import '../utilities/categ_list.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.w),
        child: Column(
          children: [
            const SizedBox(height: 5),
            const CompanyDropDownWidget(),
            const SizedBox(height: 5),
            DropDownCalendarDemo(),
          ],
        ),
      ),
    );
  }
}

class CompanyDropDownWidget extends StatefulWidget {
  const CompanyDropDownWidget({Key? key}) : super(key: key);

  @override
  _CompanyDropDownWidgetState createState() => _CompanyDropDownWidgetState();
}

class _CompanyDropDownWidgetState extends State<CompanyDropDownWidget> {
  String selectedCompany = '';
  String selectedMilk = '';
  String selectedQuantity = '';
  List<String> selectedMilkList = [];
  List<String> quantities = ['500 ml', '1000 ml', '135 ml '];
  String selectedPackets = '';
  List<String> selectedPackets1 = [
    "1",
    "2",
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 10), // Add SizedBox for spacing
        DropdownButtonFormField(
          value: selectedCompany.isNotEmpty ? selectedCompany : null,
          items: ['Heritage', 'Doodla', 'Sangam', 'Vijaya']
              .map((String companyName) {
            return DropdownMenuItem(
              value: companyName,
              child: Text(companyName),
            );
          }).toList(),
          onChanged: (String? value) {
            setState(() {
              selectedCompany = value!;
              selectedMilkList = getMilkList(selectedCompany);
              selectedMilk = '';
              selectedQuantity = '';
              selectedPackets = '';
            });
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Select Company*",
          ),
        ),
        SizedBox(height: 10), // Add SizedBox for spacing
        if (selectedMilkList.isNotEmpty)
          DropdownButtonFormField(
            value: selectedMilk.isNotEmpty ? selectedMilk : null,
            items: selectedMilkList.map((String milkName) {
              return DropdownMenuItem(
                value: milkName,
                child: Text(milkName),
              );
            }).toList(),
            onChanged: (Object? value) {
              setState(() {
                selectedMilk = value as String;
              });
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Select Milk*",
            ),
          ),
        SizedBox(height: 10), // Add SizedBox for spacing
        if (selectedMilk.isNotEmpty)
          DropdownButtonFormField(
            value: selectedQuantity.isNotEmpty ? selectedQuantity : null,
            items: quantities.map((String quantity) {
              return DropdownMenuItem(
                value: quantity,
                child: Text(quantity),
              );
            }).toList(),
            onChanged: (Object? value) {
              setState(() {
                selectedQuantity = value as String;
                // Perform action based on selected quantity
              });
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Select Quantity*",
            ),
          ),
        SizedBox(height: 10), // Add SizedBox for spacing
        if (selectedQuantity.isNotEmpty)
          DropdownButtonFormField(
            value: selectedPackets.isNotEmpty ? selectedPackets : null,
            items: selectedPackets1.map((String selectedPackets) {
              return DropdownMenuItem(
                value: selectedPackets,
                child: Text(selectedPackets),
              );
            }).toList(),
            onChanged: (Object? value) {
              setState(() {
                selectedPackets = value as String;
              });
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "selectedPackets*",
            ),
          ),
        SizedBox(height: 10), // Add SizedBox for spacing
      ],
    );
  }

  List<String> getMilkList(String company) {
    switch (company) {
      case 'Heritage':
        return heritage_milk.map((milk) => 'Heritage - $milk').toList();
      case 'Doodla':
        return doodla_milk.map((milk) => 'Doodla - $milk').toList();
      case 'Sangam':
        return sangam_milk.map((milk) => 'Sangam - $milk').toList();
      case 'Vijaya':
        return vijaya_milk.map((milk) => 'Vijaya - $milk').toList();
      default:
        return [];
    }
  }
}

// class DropDownCalendarDemo extends StatefulWidget {
//   @override
//   _DropDownCalendarDemoState createState() => _DropDownCalendarDemoState();
// }
//
// class _DropDownCalendarDemoState extends State<DropDownCalendarDemo> {
//   late String _selectedOption;
//   late DateTime _selectedDate;
//   late CalendarFormat _calendarFormat;
//   late DateTime _focusedDay;
//   late DateTime _firstDay;
//   late DateTime _lastDay;
//   late final PageController _pageController;
//
//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController();
//     _selectedOption = 'Daily';
//     _selectedDate = DateTime.now();
//     _focusedDay = DateTime.now();
//     _calendarFormat = CalendarFormat.month;
//     _firstDay = DateTime.utc(DateTime.now().year, DateTime.now().month, 1);
//     _lastDay = DateTime.utc(DateTime.now().year, DateTime.now().month + 1, 1)
//         .subtract(Duration(days: 1));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Select Your Plan',
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 8),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: [
//                 _buildPlanButton('Daily'),
//                 _buildPlanButton('Weekly'),
//                 _buildPlanButton('Fortnight'),
//                 _buildPlanButton('Alternate Days'),
//                 _buildPlanButton('One Day'),
//               ],
//             ),
//           ),
//           SizedBox(height: 20),
//           _buildCalendar(),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildPlanButton(String plan) {
//     return ElevatedButton(
//       onPressed: () {
//         setState(() {
//           _selectedOption = plan == _selectedOption ? '' : plan;
//           _updateDateRange();
//         });
//       },
//       style: ButtonStyle(
//         backgroundColor: plan == _selectedOption
//             ? MaterialStateProperty.all<Color>(Colors.green)
//             : null,
//       ),
//       child: Text(plan),
//     );
//   }
//
//   void _updateDateRange() {
//     _focusedDay = DateTime.now();
//     switch (_selectedOption) {
//       case 'Weekly':
//         _lastDay = _focusedDay.add(Duration(days: 6));
//         break;
//       case 'Fortnight':
//         _lastDay = _focusedDay.add(Duration(days: 13));
//         break;
//       case 'Alternate Days':
//         _lastDay = _focusedDay.add(Duration(days: 30));
//         break;
//       case 'One Day':
//         _lastDay = _focusedDay;
//         break;
//       case 'Daily':
//       default:
//         _lastDay = DateTime.utc(DateTime.now().year, DateTime.now().month + 1, 1)
//             .subtract(Duration(days: 1));
//     }
//   }
//
//   Widget _buildCalendar() {
//     return TableCalendar(
//       firstDay: _firstDay,
//       lastDay: _lastDay,
//       focusedDay: _focusedDay,
//       calendarFormat: _calendarFormat,
//       onFormatChanged: (format) {
//         setState(() {
//           _calendarFormat = format;
//         });
//       },
//       onDaySelected: (selectedDay, focusedDay) {
//         setState(() {
//           _selectedDate = selectedDay;
//           _focusedDay = focusedDay;
//         });
//       },
//       calendarBuilders: CalendarBuilders(
//         dowBuilder: (context, day) {
//           return Center(
//             child: Text(
//               DateFormat.E().format(day).substring(0, 1),
//               style: const TextStyle(color: Colors.blue),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }


class DropDownCalendarDemo extends StatefulWidget {
  @override
  _DropDownCalendarDemoState createState() => _DropDownCalendarDemoState();
}

class _DropDownCalendarDemoState extends State<DropDownCalendarDemo> {
  late String _selectedOption;
  late DateTime _selectedDate;
  late CalendarFormat _calendarFormat;
  late DateTime _focusedDay;
  late DateTime _firstDay;
  late DateTime _lastDay;
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _selectedOption = 'Daily';
    _selectedDate = DateTime.now();
    _focusedDay = DateTime.now();
    _calendarFormat = CalendarFormat.month;
    _firstDay = DateTime.utc(DateTime.now().year, DateTime.now().month, 1);
    _lastDay = DateTime.utc(DateTime.now().year, DateTime.now().month + 1, 1)
        .subtract(Duration(days: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select Your Plan',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildPlanButton('Daily'),
                _buildPlanButton('Weekly'),
                _buildPlanButton('Fortnight'),
                _buildPlanButton('Alternate Days'),
                _buildPlanButton('One Day'),
              ],
            ),
          ),
          SizedBox(height: 20),
          _buildCalendar(),
        ],
      ),
    );
  }

  Widget _buildPlanButton(String plan) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _selectedOption = plan == _selectedOption ? '' : plan;
          _setDateRange(plan);
        });
      },
      style: ButtonStyle(
        backgroundColor: plan == _selectedOption
            ? MaterialStateProperty.all<Color>(Colors.green)
            : null,
      ),
      child: Text(plan),
    );
  }

  void _setDateRange(String plan) {
    DateTime today = DateTime.now();
    switch (plan) {
      case 'Weekly':
        _firstDay = today.subtract(Duration(days: today.weekday - 1));
        _lastDay = _firstDay.add(Duration(days: 6));
        break;
      case 'Fortnight':
        _firstDay = today;
        _lastDay = _firstDay.add(Duration(days: 13));
        break;
      case 'Alternate Days':
        _firstDay = today;
        _lastDay = today.add(Duration(days: 29));
        break;
      case 'One Day':
        _firstDay = today;
        _lastDay = today;
        break;
      case 'Daily':
      default:
        _firstDay = DateTime.utc(today.year, today.month, 1);
        _lastDay = DateTime.utc(today.year, today.month + 1, 1)
            .subtract(Duration(days: 1));
        break;
    }
    _focusedDay = _firstDay;
  }

  Widget _buildCalendar() {
    return TableCalendar(
      firstDay: _firstDay,
      lastDay: _lastDay,
      focusedDay: _focusedDay,
      calendarFormat: _calendarFormat,
      onFormatChanged: (format) {
        setState(() {
          _calendarFormat = format;
        });
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDate = selectedDay;
          _focusedDay = focusedDay;
        });
      },
      calendarBuilders: CalendarBuilders(
        dowBuilder: (context, day) {
          return Center(
            child: Text(
              DateFormat.E().format(day).substring(0, 1),
              style: const TextStyle(color: Colors.blue),
            ),
          );
        },
        selectedBuilder: (context, day, focusedDay) {
          return _buildHighlightedDay(day);
        },
        todayBuilder: (context, day, focusedDay) {
          return _buildHighlightedDay(day);
        },
      ),
    );
  }

  Widget _buildHighlightedDay(DateTime day) {
    bool isHighlighted = _isHighlighted(day);
    return Container(
      margin: const EdgeInsets.all(4.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isHighlighted ? Colors.blue.withOpacity(0.5) : null,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Text(
        day.day.toString(),
        style: TextStyle(color: isHighlighted ? Colors.white : null),
      ),
    );
  }

  bool _isHighlighted(DateTime day) {
    if (_selectedOption == 'Weekly') {
      return day.isAfter(_firstDay.subtract(Duration(days: 1))) &&
          day.isBefore(_lastDay.add(Duration(days: 1)));
    } else if (_selectedOption == 'Fortnight') {
      return day.isAfter(_firstDay.subtract(Duration(days: 1))) &&
          day.isBefore(_lastDay.add(Duration(days: 1)));
    } else if (_selectedOption == 'Alternate Days') {
      return day.difference(_firstDay).inDays % 2 == 0;
    } else if (_selectedOption == 'One Day') {
      return day == _firstDay;
    } else {
      return day.isAfter(_firstDay.subtract(Duration(days: 1))) &&
          day.isBefore(_lastDay.add(Duration(days: 1)));
    }
  }
}


