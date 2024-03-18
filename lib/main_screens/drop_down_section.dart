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
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../utilities/categ_list.dart';
import 'dropdwonwidget_provider.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.w),
        child: Column(
          children: [
            SizedBox(height: 50),
            const CompanyDropDownWidget(),
            const SizedBox(
              height: 50,
            ),
            DateRangePickerDemo(),
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
      children: [
        DropdownButtonFormField(
          value: selectedCompany.isNotEmpty ? selectedCompany : null,
          items: company.map((String companyName) {
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
        const SizedBox(height: 10),
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
        const SizedBox(height: 10),
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
        const SizedBox(height: 10),
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

class DateRangePickerDemo extends StatefulWidget {
  @override
  _DateRangePickerDemoState createState() => _DateRangePickerDemoState();
}

class _DateRangePickerDemoState extends State<DateRangePickerDemo> {
  DateTime? _startDate;
  DateTime? _endDate;

  Future<void> _selectDateRange(BuildContext context) async {
    final initialDateRange = DateTimeRange(
      start: _startDate ?? DateTime.now(),
      end: _endDate ?? DateTime.now().add(Duration(days: 7)),
    );

    final newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
      initialDateRange: initialDateRange,
    );

    if (newDateRange == null) return;

    setState(() {
      _startDate = newDateRange.start;
      _endDate = newDateRange.end;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => _selectDateRange(context),
          child: Text('Select Date Range'),
        ),
        if (_startDate != null && _endDate != null)
          Text(
            'Selected Date Range: ${_startDate!.toString().split(' ')[0]} to ${_endDate!.toString().split(' ')[0]}',
          ),
      ],
    );
  }
}










