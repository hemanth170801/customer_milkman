import 'package:flutter/material.dart';

class SubCategProducts extends StatelessWidget {
  final String maincategName;
  final String subcategName;
  const SubCategProducts({Key? key, required this.subcategName, required this.maincategName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
       leading: IconButton(
         icon: const Icon(
           Icons.arrow_back_ios_new,
           color: Colors.black,
         ),
         onPressed: () {
           Navigator.pop(context);
         },
       ),
        title: Text(subcategName),
      ),
      body: Center(
        child: Text(maincategName),
      ),
    );
  }
}
