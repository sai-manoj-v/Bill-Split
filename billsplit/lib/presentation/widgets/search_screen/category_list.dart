import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

// We need statefull widget because we are gonna change some state on our category
class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  // by default first item will be selected
  int selectedIndex = 0;
  List categories = ['All', 'Groups', 'Friends', 'Transactions'];
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      margin: const EdgeInsets.only(
          top: kDefaultPadding / 4, bottom: kDefaultPadding / 2),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              left: index == 0 ? kDefaultPadding : kDefaultPadding / 4,
              // At end item it add extra 20 right  padding
              right: index == categories.length - 1 ? kDefaultPadding : 0,
            ),
            padding: EdgeInsets.symmetric(
                horizontal: index == selectedIndex
                    ? kDefaultPadding
                    : kDefaultPadding / 2),
            decoration: ShapeDecoration(
              shadows: [
                BoxShadow(
                  blurRadius: 10,
                  color: const Color.fromARGB(255, 55, 55, 55).withOpacity(.1),
                )
              ],
              gradient: LinearGradient(
                  colors: index == selectedIndex
                      ? [Colors.amber, const Color(0xFFFFD54F)]
                      : [Colors.transparent, Colors.transparent]),
              shape: SmoothRectangleBorder(
                borderRadius: SmoothBorderRadius(
                  cornerRadius: 10,
                  cornerSmoothing: 1.0,
                ),
              ),
            ),
            child: Text(
              categories[index],
              style: TextStyle(
                  color: index == selectedIndex ? primaryColor : Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
