import 'package:flutter/material.dart';
//import '../minor_screens/search.dart';
import '../widgets/fake_search.dart';
import 'drop_down_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 18,
      child: Scaffold(
        body: DropDownWidget(),
      ),
    );
  }
}













//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           elevation: 0,
//           backgroundColor: Colors.white,
//           title: const FakeSearch(),
//           bottom: const TabBar(
//             isScrollable: true,
//             indicatorColor: Colors.purple,
//             tabs: [
//               RepeatedTab(label: 'Milk'),
//               RepeatedTab(label: 'Curd'),
//               RepeatedTab(label: 'Ghee'),
//               RepeatedTab(label: 'Paneer'),
//               RepeatedTab(label: 'Lassi'),
//               RepeatedTab(label: 'Buttermilk'),
//               RepeatedTab(label: 'Cheese'),
//               RepeatedTab(label: 'Cold Coffee'),
//               RepeatedTab(label: 'Whey Drink'),
//               RepeatedTab(label: 'UHT Milk'),
//               RepeatedTab(label: 'Frozen Desserts'),
//               RepeatedTab(label: 'Ice-Creams'),
//               RepeatedTab(label: 'Milkshake'),
//               RepeatedTab(label: 'Sweets'),
//               RepeatedTab(label: 'Butter'),
//               RepeatedTab(label: 'Fresh Cream'),
//               RepeatedTab(label: 'Flavoured Milk'),
//               RepeatedTab(label: 'Skimmed Milk Powder'),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(
//               child: Text('milk screen'),
//             ),
//             Center(
//               child: Text('curd screen'),
//             ),
//             Center(
//               child: Text('ghee screen'),
//             ),
//             Center(
//               child: Text('paneer screen'),
//             ),
//             Center(
//               child: Text('lassi screen'),
//             ),
//             Center(
//               child: Text('buttermilk screen'),
//             ),
//             Center(
//               child: Text('cheese screen'),
//             ),
//             Center(
//               child: Text('cold coffee screen'),
//             ),
//             Center(
//               child: Text('whey drink screen'),
//             ),
//             Center(
//               child: Text('UHT milk screen'),
//             ),
//             Center(
//               child: Text('frozen desserts screen'),
//             ),
//             Center(
//               child: Text('ice-creams screen'),
//             ),
//             Center(
//               child: Text('milkshake screen'),
//             ),
//             Center(
//               child: Text('sweets screen'),
//             ),
//             Center(
//               child: Text('butter screen'),
//             ),
//             Center(
//               child: Text('fresh cream screen'),
//             ),
//             Center(
//               child: Text('flavoured milk screen'),
//             ),
//             Center(
//               child: Text('skimmed milk powder screen'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
// class RepeatedTab extends StatelessWidget {
//   final String label;
//   const RepeatedTab({super.key, required this.label});
//
//   @override
//   Widget build(BuildContext context) {
//     return Tab(
//       child: Text(
//         label,
//         style: TextStyle(color: Colors.grey.shade600),
//       ),
//     );
//   }