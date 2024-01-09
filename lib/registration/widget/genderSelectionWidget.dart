// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../registration_page_provider.dart';
//
//
// class GenderSelectionWidget extends StatelessWidget {
//   const GenderSelectionWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final provider = context.watch<GenderDOBProvider>();
//
//     return GestureDetector(
//       onTap: () async {
//         await provider.pickGender(context);
//       },
//       child: Container(
//         padding: EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.blue),
//           borderRadius: BorderRadius.circular(5),
//         ),
//         child: const Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               'Gender',
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             Icon(Icons.arrow_drop_down),
//           ],
//         ),
//       ),
//     );
//   }
// }
