import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../constants.dart';
import '../widgets/nav_bar/search_box.dart';
import '../widgets/search_screen/category_list.dart';


class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  Future<List<String>> _fetchData() async {
    final response = await http.get(Uri.parse('your_api_url'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List<dynamic>;
      return data.map((item) => item['name'] as String).toList(); // Assuming 'name' key in response
    } else {
      throw Exception('Failed to load data');
    }
  }


  List<String> items = [
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
  ]; // Your list items
  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = items; // Initialize filteredItems here
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
                filteredItems = items
                    .where((item) =>
                        item.toLowerCase().contains(value.toLowerCase()))
                    .toList();
              });
            }),
            const CategoryList(),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    decoration: const BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: ListView.builder(
                      itemCount: filteredItems.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          enabled: true,
                          leading: const Icon(Icons.person_3_rounded),
                          title: Text(filteredItems[index]),
                          trailing: const Icon(Icons.circle),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          onTap: () => {},
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
