import 'package:flutter/material.dart';
import '../../utils/constants/colors.dart';
import '../widgets/nav_bar/search_box.dart';
import 'package:billsplit/ui/widgets/search_screen/category_list.dart';
import 'package:billsplit/utils/constants/sizes.dart';

class Search extends StatefulWidget {
  const Search({this.restorationId, super.key});
  final String? restorationId;

  @override
  State<StatefulWidget> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<String> users = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 1',
    'Item 2',
    'Item 3'
  ]; // Your list users
  List<String> filteredUsers = [];

  @override
  void initState() {
    super.initState();
    filteredUsers = users; // Initialize filteredUsers here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: primaryColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            SearchBox(onChanged: (value) {
              setState(() {
                filteredUsers = users
                    .where((item) =>
                        item.toLowerCase().contains(value.toLowerCase()))
                    .toList();
              });
            }),
            const CategoryList(),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: const BoxDecoration(
                  color: kBackgroundColorLight,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(borderRadiusDefault),
                    topRight: Radius.circular(borderRadiusDefault),
                  ),
                ),
                child: RefreshIndicator(
                  onRefresh: () {
                    return Future.delayed(const Duration(seconds: 1), () {
                      setState(() {
                        filteredUsers.addAll(["Ionic", "Xamarin"]);
                      });
                    });
                  },
                  child: ListView.builder(
                    itemCount: filteredUsers.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        enabled: true,
                        leading: const Icon(Icons.person_3_rounded),
                        title: Text(filteredUsers[index]),
                        trailing: const Icon(Icons.circle),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        onTap: () => {},
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
