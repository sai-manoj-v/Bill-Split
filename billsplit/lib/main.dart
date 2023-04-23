import 'package:billsplit/constants.dart';
import 'package:billsplit/presentation/widgets/nav_bar/nav_bar_button.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:billsplit/presentation/widgets/nav_bar/floating_nav_bar.dart';
import 'package:flutter/services.dart';
import 'package:line_icons/line_icons.dart';
import 'package:billsplit/presentation/screens/search.dart';
import 'package:billsplit/presentation/screens/groups.dart';
import 'package:billsplit/presentation/screens/homepage.dart';
import 'package:billsplit/presentation/screens/activity.dart';
import 'package:billsplit/presentation/screens/reports.dart';

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
    //To set status bar icon color dynamically
    SystemUiOverlayStyle statusAndNavBarTheme = SystemUiOverlayStyle(
      //systemNavigationBarColor: Colors.transparent.withOpacity(0.1),
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness:
          [0, 2].contains(_selectedIndex) ? Brightness.light : Brightness.dark,
      statusBarBrightness:
          [0, 2].contains(_selectedIndex) ? Brightness.dark : Brightness.light,
    );

    return MaterialApp(
        theme: ThemeData(
            fontFamily: 'Poppins',
            primaryColor: primaryColor,
            colorScheme:
                ColorScheme.fromSwatch().copyWith(secondary: primaryColor)),
        debugShowCheckedModeBanner: false,
        home: AnnotatedRegion<SystemUiOverlayStyle>(
          value: statusAndNavBarTheme,
          child: Scaffold(
            extendBody: true,
            backgroundColor: _selectedIndex == 0 ? primaryColor : Colors.white,
            body: PageView(
              onPageChanged: (page) {
                setState(() {
                  _selectedIndex = page;
                });
              },
              controller: controller,
              children: const [
                Search(),
                Groups(),
                HomePage(),
                SafeArea(child: Activity()),
                SafeArea(child: Reports()),
              ],
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
                      cornerRadius: 25,
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      duration: const Duration(milliseconds: 400),
                      tabBackgroundColor: Colors.white,
                      color: primaryColor,
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
                      onTabChange: (index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                        controller.jumpToPage(index);
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
