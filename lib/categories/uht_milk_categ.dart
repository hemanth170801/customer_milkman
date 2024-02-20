import 'package:flutter/material.dart';
import 'package:customer_milkman/utilities/categ_list.dart';
import '../widgets/categ_widgets.dart';

class UHTMilkCategory extends StatelessWidget {
  const UHTMilkCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CategHeaderLabel(headerLabel: 'UHT Milk',),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.68,
                    child: GridView.count(
                      mainAxisSpacing: 30,
                      crossAxisSpacing: 15,
                      crossAxisCount: 2,
                      children: List.generate(uhtmilk.length, (index) {
                        return SubcategModel(
                          mainCategName: 'UHT Milk',
                          subCategName: uhtmilk[index],
                          assetName: 'images/company_logos/company$index.jpg',
                          subCategLabel: uhtmilk[index],
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            right: 0,
            child: SliderBar(maincategName: 'UHT Milk',
            ),
          ),
        ],
      ),
    );
  }
}

