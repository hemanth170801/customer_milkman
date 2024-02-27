import 'package:flutter/material.dart';
import 'package:customer_milkman/utilities/categ_list.dart';
import 'package:sizer/sizer.dart';
import '../widgets/categ_widgets.dart';

class PaneerCategory extends StatelessWidget {
  const PaneerCategory({super.key});

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
                    const CategHeaderLabel(headerLabel: 'Paneer',),
                    SizedBox(
                      height: 68.h,
                      child: GridView.count(
                        mainAxisSpacing: 4.h,
                        crossAxisSpacing: 2.h,
                        crossAxisCount: 2,
                        children: List.generate(paneer.length, (index) {
                          return SingleChildScrollView(
                            child: SubcategModel(
                              mainCategName: 'Paneer',
                              subCategName: paneer[index],
                              assetName: 'images/company_logos/company$index.jpg',
                              subCategLabel: paneer[index],
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
            child: SliderBar(maincategName: 'Paneer',
            ),
          ),
        ],
      ),
    );
  }
}

