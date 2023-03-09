import 'package:billsplit/widgets/nav_bar_button.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:billsplit/widgets/floating_nav_bar.dart';
import 'package:flutter/services.dart';
import 'package:line_icons/line_icons.dart';
import 'package:billsplit/screens/homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 2;
  TextStyle navBarTextStyle = const TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  PageController controller = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      systemNavigationBarColor: Colors.white,
    ));
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        body: PageView.builder(
          onPageChanged: (page) {
            setState(() {
              _selectedIndex = page;
            });
          },
          controller: controller,
          itemBuilder: (context, position) {
            return SafeArea(
              child: HomePage(),
            );
          },
          itemCount: 5,
        ),
        bottomNavigationBar: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(
                horizontal: 20), //to be changed based on pixel
            decoration: ShapeDecoration(
              color: Colors.white,
              shadows: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(.1),
                )
              ],
              shape: SmoothRectangleBorder(
                borderRadius: SmoothBorderRadius(
                  cornerRadius: 30,
                  cornerSmoothing: 1.0,
                ),
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: FloatingNavBar(
                  rippleColor: Colors.grey[300]!,
                  hoverColor: Colors.grey[100]!,
                  gap: 6,
                  activeColor: Colors.white,
                  iconSize: 20,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  duration: const Duration(milliseconds: 400),
                  tabBackgroundColor: Colors.white,
                  color: const Color(0xff37474F),
                  backgroundColor: Colors.green,
                  tabs: [
                    NavBarButton(
                      icon: LineIcons.search,
                      textColor: Colors.white,
                      text: Text(
                        'Search',
                        style: navBarTextStyle,
                      ),
                    ),
                    NavBarButton(
                      icon: LineIcons.userFriends,
                      text: Text(
                        'Groups',
                        style: navBarTextStyle,
                      ),
                    ),
                    NavBarButton(
                      icon: LineIcons.home,
                      text: Text(
                        'Home',
                        style: navBarTextStyle,
                      ),
                    ),
                    NavBarButton(
                      icon: LineIcons.book,
                      text: Text(
                        'Activity',
                        style: navBarTextStyle,
                      ),
                    ),
                    NavBarButton(
                      icon: LineIcons.pieChart,
                      text: Text(
                        'Reports',
                        style: navBarTextStyle,
                      ),
                    ),
                  ],
                  selectedIndex: _selectedIndex,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
