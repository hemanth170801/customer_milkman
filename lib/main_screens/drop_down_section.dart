import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../utilities/categ_list.dart';
import 'deopdwonwidget_provider.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.w),
        child: const Column(
          children: [
            SizedBox(height: 50),
            CompanyDropDownWidget(),
            SizedBox(
              height: 50,
            ),
            //CompanyDropDownWidget1(),
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
//
//
// class _CompanyDropDownWidgetState extends State<CompanyDropDownWidget> {
//   String selectedCompany = '';
//   String selectedMilk = '';
//   List<String> selectedMilkList = [];
//
//   @override
//   Widget build(BuildContext context) {
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
//               // Reset selected milk when company changes
//               selectedMilk = '';
//             });
//           },
//           decoration: const InputDecoration(
//             border: OutlineInputBorder(),
//             labelText: "Select Company*",
//           ),
//         ),
//         SizedBox(height: 10),
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
//       ],
//     );
//   }
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
// }
class _CompanyDropDownWidgetState extends State<CompanyDropDownWidget> {
  String selectedCompany = '';
  String selectedMilk = '';
  String selectedQuantity = '';
  List<String> selectedMilkList = [];
  List<String> quantities = ['Half Litre', 'One Litre', '135 ml '];

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
              // Reset selected milk and quantity when company changes
              selectedMilk = '';
              selectedQuantity = '';
            });
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Select Company*",
          ),
        ),
        SizedBox(height: 10),
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
        SizedBox(height: 10),
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
                print('Selected Quantity: $selectedQuantity');
              });
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Select Quantity*",
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


