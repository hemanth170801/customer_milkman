// import 'package:customer_milkman/main_screens/select_plans.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:sizer/sizer.dart';
// import '../utilities/categ_list.dart';
// import 'dropdwonwidget_provider.dart';
//
//
// class DropDownWidget extends StatelessWidget {
//   const DropDownWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.w),
//         child: Column(
//           children: [
//             SizedBox(height: 50),
//             const CompanyDropDownWidget(),
//             const SizedBox(
//               height: 50,
//             ),
//            //DateRangePickerDemo(),
//             // ElevatedButton(
//             //   onPressed: () {
//             //     Navigator.push(
//             //       context,
//             //       MaterialPageRoute(
//             //         builder: (context) => SelectPlans(),
//             //       ),
//             //     );
//             //   },
//             //   child: Text('Go to Plans'),
//             // ),
//
//           ],
//         ),
//       ),
//
//
//     );
//   }
// }
//
// class CompanyDropDownWidget extends StatefulWidget {
//   const CompanyDropDownWidget({Key? key}) : super(key: key);
//
//   @override
//   _CompanyDropDownWidgetState createState() => _CompanyDropDownWidgetState();
// }
// class _CompanyDropDownWidgetState extends State<CompanyDropDownWidget> {
//   String selectedCompany = '';
//   String selectedMilk = '';
//   String selectedQuantity = '';
//   List<String> selectedMilkList = [];
//   List<String> quantities = ['500 ml', '1000 ml', '135 ml '];
//   String selectedPackets = '';
//   List<String> selectedPackets1 =["1","2",'3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20',];
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Column(
//       children: [
//         DropdownButtonFormField(
//           value: selectedCompany.isNotEmpty ? selectedCompany : null,
//           items: company.map((String companyName) {
//             return DropdownMenuItem(
//               value: companyName,
//               child: Text(companyName),
//             );
//           }).toList(),
//           onChanged: (String? value) {
//             setState(() {
//               selectedCompany = value!;
//               selectedMilkList = getMilkList(selectedCompany);
//               selectedMilk = '';
//               selectedQuantity = '';
//               selectedPackets = '';
//             });
//           },
//           decoration: const InputDecoration(
//             border: OutlineInputBorder(),
//             labelText: "Select Company*",
//           ),
//         ),
//         const SizedBox(height: 10),
//         if (selectedMilkList.isNotEmpty)
//           DropdownButtonFormField(
//             value: selectedMilk.isNotEmpty ? selectedMilk : null,
//             items: selectedMilkList.map((String milkName) {
//               return DropdownMenuItem(
//                 value: milkName,
//                 child: Text(milkName),
//               );
//             }).toList(),
//             onChanged: (Object? value) {
//               setState(() {
//                 selectedMilk = value as String;
//               });
//             },
//             decoration: const InputDecoration(
//               border: OutlineInputBorder(),
//               labelText: "Select Milk*",
//             ),
//           ),
//         const SizedBox(height: 10),
//         if (selectedMilk.isNotEmpty)
//           DropdownButtonFormField(
//             value: selectedQuantity.isNotEmpty ? selectedQuantity : null,
//             items: quantities.map((String quantity) {
//               return DropdownMenuItem(
//                 value: quantity,
//                 child: Text(quantity),
//               );
//             }).toList(),
//             onChanged: (Object? value) {
//               setState(() {
//                 selectedQuantity = value as String;
//                 // Perform action based on selected quantity
//               });
//             },
//             decoration: const InputDecoration(
//               border: OutlineInputBorder(),
//               labelText: "Select Quantity*",
//             ),
//           ),
//         const SizedBox(height: 10),
//         if (selectedQuantity.isNotEmpty)
//           DropdownButtonFormField(
//             value: selectedPackets.isNotEmpty ? selectedPackets : null,
//             items: selectedPackets1.map((String selectedPackets) {
//               return DropdownMenuItem(
//                 value: selectedPackets,
//                 child: Text(selectedPackets),
//               );
//             }).toList(),
//             onChanged: (Object? value) {
//               setState(() {
//                 selectedPackets = value as String;
//               });
//             },
//             decoration: const InputDecoration(
//               border: OutlineInputBorder(),
//               labelText: "selectedPackets*",
//             ),
//           ),
//
//       ],
//     );
//   }
//
//   List<String> getMilkList(String company) {
//     switch (company) {
//       case 'Heritage':
//         return heritage_milk.map((milk) => 'Heritage - $milk').toList();
//       case 'Doodla':
//         return doodla_milk.map((milk) => 'Doodla - $milk').toList();
//       case 'Sangam':
//         return sangam_milk.map((milk) => 'Sangam - $milk').toList();
//       case 'Vijaya':
//         return vijaya_milk.map((milk) => 'Vijaya - $milk').toList();
//       default:
//         return [];
//     }
//   }
//
// }

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
            SizedBox(height: 5),
            CompanyDropDownWidget(),
            SizedBox(height: 5),
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
    _firstDay = DateTime.utc(DateTime.now().year, DateTime.now().month - 1, 1);
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

  Widget _buildCalendar() {
    switch (_selectedOption) {
      case 'Weekly':
        _calendarFormat = CalendarFormat.week;
        break;
      case 'Fortnight':
        _calendarFormat = CalendarFormat.week;
        _lastDay = _firstDay.add(Duration(days: 13));
        break;
      case 'Alternate Days':
        _calendarFormat = CalendarFormat.week;
        _lastDay = _firstDay.add(Duration(days: 1));
        break;
      case 'One Day':
        _calendarFormat = CalendarFormat.week;
        _lastDay = _firstDay;
        break;
      case 'Daily':
      default:
        _calendarFormat = CalendarFormat.month;
    }

    // Ensure focusedDay is before lastDay
    if (_focusedDay.isAfter(_lastDay)) {
      _focusedDay = _lastDay;
    }

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
              style: TextStyle(color: Colors.blue),
            ),
          );
        },
      ),
    );
  }
}
