import 'package:flutter/material.dart';
import 'package:customer_milkman/utilities/categ_list.dart';

import '../minor_screens/subcateg_products.dart';

class MilkCategory extends StatelessWidget {
  const MilkCategory({super.key});

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
                  const Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Text(
                      'Milk',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.68,
                    child: GridView.count(
                      mainAxisSpacing: 30,
                      crossAxisSpacing: 15,
                      crossAxisCount: 2,
                      children: List.generate(milk.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SubCategProducts(
                                          maincategName: 'milk',
                                          subcategName: milk[index],
                                        )));
                          },
                          child: Column(
                            children: [
                              SizedBox(
                                height: 90,
                                width: 80,
                                child: Image(
                                  image: AssetImage(
                                      'images/company_logos/company$index.jpg'),
                                ),
                              ),
                              Text(milk[index])
                            ],
                          ),
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.05,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       const Text(
                          ' << ',
                          style: TextStyle(
                            color: Colors.brown,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 10,
                          ),
                        ),
                        Text(
                          ' Milk '.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.brown,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 10,
                          ),
                        ),
                        const Text(
                          ' >> ',
                          style: TextStyle(
                            color: Colors.brown,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
