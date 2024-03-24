import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({this.restorationId, super.key});
  final String? restorationId;
  @override
  State<StatefulWidget> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
