import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../minor_screens/search.dart';

class FakeSearch extends StatelessWidget {
  const FakeSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen()));
      },
      child: Container(
        height: 4.h,
        width: 95.w,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.purple, width: 1.4),
          borderRadius: BorderRadius.circular(25),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children:[
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal:20),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'What are you looking for?',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            // Container(
            //   height: 4.h,
            //   width: 9.h,
            //   decoration: BoxDecoration(
            //       color: Colors.purple,
            //       borderRadius: BorderRadius.circular(25)),
            //   child:const Center(
            //     child: Text(
            //       'Search',
            //       style: TextStyle(
            //         fontSize: 16,
            //         color: Colors.grey,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
