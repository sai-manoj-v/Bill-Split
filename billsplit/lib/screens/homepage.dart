import 'package:billsplit/widgets/home_page_summary.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: const HomePageSummary()),
        Container(
            width: width,
            height: height / 1.8,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox()),
      ],
    );
  }
}
