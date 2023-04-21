import 'package:billsplit/model/groups.dart';
import 'package:flutter/material.dart';

class Groups extends StatefulWidget {
  const Groups({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  static List<Group> groupsList = [
    Group("D+V", 1, "", 30.45, 5),
    Group("Volta", 1, "", 30.45, 8),
    Group("Friends", 1, "", 30.45, 9),
    Group("Onnix", 1, "", 30.45, 12),
    Group("Non-Group", 1, "", 30.45, 16),
    Group("ASU", 1, "", 30.45, 4),
    Group("Saguaro", 1, "", 30.45, 6)
  ];

  void update() {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFE8EAF6),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search Groups",
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.grey),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: groupsList.length,
                  itemBuilder: (context, index) => ListTile(
                        contentPadding: const EdgeInsets.all(8.0),
                        title: Text(
                          groupsList[index].groupName!,
                          style: TextStyle(
                              color: const Color(0xFF1E1D2D),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '${groupsList[index].groupCount!} members',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )))
        ],
      ),
    );
  }
}
