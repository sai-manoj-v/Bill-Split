import 'package:flutter/material.dart';

import '../../constants.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(kDefaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 8, // 5 top and bottom
      ),
      decoration: BoxDecoration(
        color: primaryTransparentColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        onChanged: onChanged,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: Colors.white.withOpacity(0.5),
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
        ),
      ),
    );
  }
}
