import 'package:flutter/material.dart';
import 'package:customer_milkman/utilities/categ_list.dart';
import 'package:sizer/sizer.dart';
import '../widgets/categ_widgets.dart';

class ButterCategory extends StatelessWidget {
  const ButterCategory({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              top: 1.h,
              child: SizedBox(
                height: 79.h,
                width: 75.w,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CategHeaderLabel(headerLabel: 'Butter'),
                      SizedBox(
                        height: 68.h,
                        child: GridView.count(
                          mainAxisSpacing: 4.h,
                          crossAxisSpacing: 2.h,
                          crossAxisCount: 2,
                          children: List.generate(butter.length, (index) {
                            return Expanded(
                              child: SubcategModel(
                                mainCategName: 'Butter',
                                subCategName: butter[index],
                                assetName: 'images/company_logos/company$index.jpg',
                                subCategLabel: butter[index],
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
              child: SliderBar(maincategName: 'Butter'),
            ),
          ],
        ),
      ),
    );
  }
}

