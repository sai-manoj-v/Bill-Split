import 'package:flutter/material.dart';

class Reports extends StatefulWidget {
  const Reports({this.restorationId, super.key});
  final String? restorationId;
  @override
  State<StatefulWidget> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox()),
      ],
    );
  }
}
