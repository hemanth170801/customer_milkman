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
//             const ButtonWidget(),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ButtonWidget extends StatelessWidget {
//   const ButtonWidget({super.key});
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
//             SizedBox(
//               height: 50,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => PlansScreen(),
//                   ),
//                 );
//                 },
//               child: const Text('Add to Plans'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:customer_milkman/main_screens/plans_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SelectPlans extends StatefulWidget {
  const SelectPlans({Key? key}) : super(key: key);

  @override
  State<SelectPlans> createState() => _SelectPlansState();
}

class _SelectPlansState extends State<SelectPlans> {
  DateTime? fromDate;
  DateTime? toDate;

  bool isEditing = false;
  String selectedMilk = 'Milk Name';
  int selectedQuantity = 1;
  String selectedSchedule = 'Daily'; // Initial schedule selection

  Future<void> _selectFromDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: fromDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2500),
    );
    if (picked != null && picked != fromDate) {
      setState(() {
        fromDate = picked;
      });
    }
  }

  Future<void> _selectToDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: toDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2500),
    );
    if (picked != null && picked != toDate) {
      setState(() {
        toDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Plans'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('From Date:'),
            const SizedBox(height: 8),
            InkWell(
              onTap: () => _selectFromDate(context),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    const Icon(Icons.calendar_today),
                    const SizedBox(width: 8),
                    Text(fromDate != null
                        ? '${fromDate!.day}/${fromDate!.month}/${fromDate!.year}'
                        : 'Select From Date'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text('To Date:'),
            const SizedBox(height: 8),
            InkWell(
              onTap: () => _selectToDate(context),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    const Icon(Icons.calendar_today),
                    const SizedBox(width: 8),
                    Text(toDate != null
                        ? '${toDate!.day}/${toDate!.month}/${toDate!.year}'
                        : 'Select To Date'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                setState(() {
                  isEditing = !isEditing;
                });
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('$selectedMilk - $selectedQuantity'),
                    Icon(Icons.edit),
                  ],
                ),
              ),
            ),
            if (isEditing)
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Edit Plan'),
                    const SizedBox(height: 10),
                    Text('Milk: $selectedMilk'),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text('Schedule: '),
                        DropdownButton<String>(
                          value: selectedSchedule,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedSchedule = newValue!;
                            });
                          },
                          items: <String>['Daily', 'Alternate Days', 'Weekdays', 'Weekends', 'FortNight']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text('Quantity: '),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (selectedQuantity > 1) {
                                selectedQuantity--;
                              }
                            });
                          },
                          icon: const Icon(Icons.remove),
                        ),
                        Text('$selectedQuantity'),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              selectedQuantity++;
                            });
                          },
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isEditing = false;
                              // Add logic to cancel editing here
                            });
                          },
                          child: const Text('Cancel'),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              // Add logic to save changes here
                            });
                          },
                          child: const Text('Save'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            const ButtonWidget(),
          ],
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 25.w,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlansScreen(),
                  ),
                );
              },
              child: const Text('Add to Plans'),
            ),
          ],
        ),
      ),
    );
  }
}
