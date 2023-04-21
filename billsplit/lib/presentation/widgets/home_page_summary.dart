import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class HomePageSummary extends StatefulWidget {
  const HomePageSummary({Key? key}) : super(key: key);

  @override
  State<HomePageSummary> createState() => _HomePageSummaryState();
}

class _HomePageSummaryState extends State<HomePageSummary> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(alignment: Alignment.topCenter, children: [
      //Blue Background for summary
      Container(
        height: (height / 9) * 2,
        margin: EdgeInsets.symmetric(horizontal: width * 0.02),
        decoration: ShapeDecoration(
          color: const Color(0xFF1E1D2D),
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
                    width * 0.1, height * 0.02, 0, height * 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SelectionContainer.disabled(
                        child: Text('Hello,',
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: height / 55,
                              fontWeight: FontWeight.w200,
                            ))),
                    SelectionContainer.disabled(
                        child: Text('Manoj!',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height / 40,
                                fontWeight: FontWeight.w600)))
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: height * 0.07,
                margin: EdgeInsets.fromLTRB(
                    0, height * 0.02, width * 0.1, height * 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          Container(
            height: (height / 9) * 1.5,
            margin: EdgeInsets.fromLTRB(
                width * 0.09, height * 0.01, width * 0.09, 0),
            decoration: ShapeDecoration(
              color: Colors.amber,
              shape: SmoothRectangleBorder(
                borderRadius: SmoothBorderRadius(
                  cornerRadius: 20,
                  cornerSmoothing: 1.0,
                ),
              ),
            ),
          ),
        ],
      )
    ]);
  }
}
