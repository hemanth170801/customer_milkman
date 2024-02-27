import 'package:flutter/material.dart';
import 'package:customer_milkman/utilities/categ_list.dart';
import 'package:sizer/sizer.dart';
import '../widgets/categ_widgets.dart';

class ColdCoffeeCategory extends StatelessWidget {
  const ColdCoffeeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            top:1.h,
            child: SizedBox(
              // height: MediaQuery.of(context).size.height * 0.8,
              // width: MediaQuery.of(context).size.width * 0.75,
              height: 79.h,
              width: 75.w,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CategHeaderLabel(headerLabel: 'Cold Coffee',),
                    SizedBox(
                      height: 68.h,
                      child: GridView.count(
                        mainAxisSpacing: 4.h,
                        crossAxisSpacing: 2.h,
                        crossAxisCount: 2,
                        children: List.generate(coldcoffee.length, (index) {
                          return SingleChildScrollView(
                            child: SubcategModel(
                              mainCategName: 'Cold Coffee',
                              subCategName: coldcoffee[index],
                              assetName: 'images/company_logos/company$index.jpg',
                              subCategLabel: coldcoffee[index],
                            ),
                          );
                        }),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            right: 0,
            child: SliderBar(maincategName: 'Cold Coffee',
            ),
          ),
        ],
      ),
    );
  }
}

