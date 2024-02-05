import 'package:customer_milkman/categories/milk_categ.dart';
import 'package:customer_milkman/widgets/fake_search.dart';
import 'package:flutter/material.dart';

List<ItemsData> items = [
  ItemsData(label: 'Milk'),
  ItemsData(label: 'Curd'),
  ItemsData(label: 'Ghee'),
  ItemsData(label: 'Paneer'),
  ItemsData(label: 'Lassi'),
  ItemsData(label: 'Buttermilk'),
  ItemsData(label: 'Cheese'),
  ItemsData(label: 'Cold Coffee'),
  ItemsData(label: 'Whey Drink'),
  ItemsData(label: 'UHT Milk'),
  ItemsData(label: 'Frozen Desserts'),
  ItemsData(label: 'Ice-Creams'),
  ItemsData(label: 'Milkshake'),
  ItemsData(label: 'Sweets'),
  ItemsData(label: 'Butter'),
  ItemsData(label: 'Fresh Cream'),
  ItemsData(label: 'Flavoured Milk'),
  ItemsData(label: 'Skimmed Milk Powder'),
];

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    for (var element in items) {
      element.isSelected = false;
    }
    setState(() {
      items[0].isSelected = true;
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const FakeSearch(),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: sideNavigator(size),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: categView(size),
          ),
        ],
      ),
    );
  }

  Widget sideNavigator(Size size) {
    return SizedBox(
      height: size.height * 0.8,
      width: size.width * 0.2,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.bounceInOut);
              // for (var element in items) {
              //   element.isSelected = false;
              // }
              // setState(() {
              //   items[index].isSelected = true;
              // });
            },
            child: Container(
              color: items[index].isSelected == true
                  ? Colors.white
                  : Colors.grey.shade300,
              height: 100,
              child: Center(
                child: Text(items[index].label),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget categView(Size size) {
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.8,
      color: Colors.white,
      child: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          for (var element in items) {
            element.isSelected = false;
          }
          setState(() {
            items[value].isSelected = true;
          });
        },
        scrollDirection: Axis.vertical,
        children: const [
          MilkCategory(),
          Center(
            child: Text('Curd Category'),
          ),
          Center(
            child: Text('Ghee Category'),
          ),
          Center(
            child: Text('Paneer Category'),
          ),
          Center(
            child: Text('Lassi Category'),
          ),
          Center(
            child: Text('Buttermilk Category'),
          ),
          Center(
            child: Text('Cheese Category'),
          ),
          Center(
            child: Text('Cold Coffee Category'),
          ),
          Center(
            child: Text('Whey Drink Category'),
          ),
          Center(
            child: Text('UHT Milk Category'),
          ),
          Center(
            child: Text('Frozen Desserts Category'),
          ),
          Center(
            child: Text('Ice-Cream Category'),
          ),
          Center(
            child: Text('Milkshake Category'),
          ),
          Center(
            child: Text('Sweets Category'),
          ),
          Center(
            child: Text('Butter Category'),
          ),
          Center(
            child: Text('Fresh Cream Category'),
          ),
          Center(
            child: Text('Flavoured Milk Category'),
          ),
          Center(
            child: Text('Skimmed Milk powder Category'),
          ),
        ],
      ),
    );
  }
}

class ItemsData {
  String label;
  bool isSelected;
  ItemsData({required this.label, this.isSelected = false});
}
