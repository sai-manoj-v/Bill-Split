import 'package:billsplit/utils/constants/colors.dart';
import 'package:billsplit/ui/widgets/home_page_summary.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {

  const DashboardPage({this.restorationId, super.key});

  final String? restorationId;

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: const HomePageSummary()),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    decoration: const BoxDecoration(
                      color: kBackgroundColorLight,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
