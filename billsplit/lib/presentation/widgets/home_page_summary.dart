import 'package:billsplit/constants.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class HomePageSummary extends StatefulWidget {
  const HomePageSummary({Key? key}) : super(key: key);

  @override
  State<HomePageSummary> createState() => _HomePageSummaryState();
}

class _HomePageSummaryState extends State<HomePageSummary> {
  static const List<Map<String, dynamic>> friends = [
    {
      'image': 'profile.png',
      'name': 'Mike',
    },
    {
      'image': 'profile1.png',
      'name': 'Cody',
    },
    {
      'image': 'profile2.png',
      'name': 'Lisa',
    },
    {
      'image': 'profile.png',
      'name': 'Bran',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(alignment: Alignment.topCenter, children: [
      //White Background for summary
      Container(
        height: (height / 9) * 2,
        margin: EdgeInsets.symmetric(horizontal: width * 0.04),
        decoration: ShapeDecoration(
          shadows: [
            BoxShadow(
              color: Colors.grey.shade900,
              blurRadius: 15,
              offset: const Offset(5, 5),
            ),
            const BoxShadow(
              color: Colors.black,
              blurRadius: 15,
              offset: Offset(-5, -5),
            ),
          ],
          color: Colors.white,
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: 40,
              cornerSmoothing: 1.0,
            ),
          ),
        ),
      ),
      //Yellow background for summary
      Column(
        children: [
          Row(children: [
            Expanded(
              flex: 2,
              child: Container(
                height: height * 0.07,
                margin: EdgeInsets.fromLTRB(
                    width * 0.15, height * 0.02, 0, height * 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SelectionContainer.disabled(
                        child: Text('Hello,',
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              color: Color(0xFF757575),
                              fontSize: height / 55,
                              fontWeight: FontWeight.w200,
                            ))),
                    SelectionContainer.disabled(
                        child: Text('Manoj!',
                            style: TextStyle(
                                color: primaryColor,
                                fontSize: height / 40,
                                fontWeight: FontWeight.w600)))
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: height * 0.05,
                width: 20,
                decoration: ShapeDecoration(
                  color: primaryColor,
                  shape: SmoothRectangleBorder(
                    borderRadius: SmoothBorderRadius(
                      cornerRadius: 20,
                      cornerSmoothing: 1.0,
                    ),
                  ),
                ),
                margin: EdgeInsets.fromLTRB(
                    0, height * 0.02, width * 0.13, height * 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.notifications_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    Icon(
                      Icons.person_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ]),
          Stack(
            children: [
              Container(
                height: (height / 9) * 1.5,
                margin: EdgeInsets.fromLTRB(
                    width * 0.09, height * 0.01, width * 0.09, 0),
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                      colors: [Colors.amber, Color(0xFFFFD54F)]),
                  shape: SmoothRectangleBorder(
                    borderRadius: SmoothBorderRadius(
                      cornerRadius: 20,
                      cornerSmoothing: 1.0,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    width: width * 0.5,
                    margin: EdgeInsets.fromLTRB(
                        width * 0.15, height * 0.03, 0, height * 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SelectionContainer.disabled(
                            child: Text('Total Balance',
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  fontSize: (height / 9) * 0.11,
                                  color: Colors.white,
                                ))),
                        SelectionContainer.disabled(
                            child: Text('\$79.85',
                                style: TextStyle(
                                    //color: Color(0xFFff4507),
                                    color: Color.fromARGB(255, 29, 29, 29),
                                    fontSize: (height / 9) * 0.4,
                                    fontWeight: FontWeight.w600))),
                        Row(
                          children: [
                            SizedBox(
                              height: (height / 9) * 0.4,
                              width: 85,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: friends.length,
                                  itemBuilder: (context, index) {
                                    final friend = friends[index];
                                    return Align(
                                      widthFactor: 0.7,
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.red.shade200,
                                        child: Image.asset(
                                            'assets/${friend['image']}'),
                                      ),
                                    );
                                  }),
                            ),
                            Container(
                              height: (height / 9) * 0.3,
                              width: 40,
                              decoration: ShapeDecoration(
                                color: Colors.orange.shade200,
                                shape: SmoothRectangleBorder(
                                  borderRadius: SmoothBorderRadius(
                                    cornerRadius: 15,
                                    cornerSmoothing: 1.0,
                                  ),
                                ),
                              ),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.add,
                                        color: Colors.white70, size: 10),
                                    Text(
                                      "4",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ]),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      )
    ]);
  }
}
