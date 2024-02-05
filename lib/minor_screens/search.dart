import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title:  CupertinoSearchTextField(
          padding:  const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.purple,),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}
