import 'package:billsplit/ui/widgets/nav_bar/floating_nav_bar.dart';
import 'package:billsplit/ui/widgets/nav_bar/nav_bar_button.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:billsplit/utils/constants/sizes.dart';
import 'package:billsplit/utils/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
    this.restorationId,
    required this.child,
    required this.onTap,
  });

  final String? restorationId;
  final Widget child;
  final void Function(int) onTap;

  final TextStyle navBarTextStyle = const TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    final index = _getSelectedIndex(GoRouter.of(context).location);
    SystemUiOverlayStyle statusAndNavBarTheme = SystemUiOverlayStyle(
      //systemNavigationBarColor: Colors.transparent.withOpacity(0.1),
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness:
          [0, 2].contains(index) ? Brightness.light : Brightness.dark,
      statusBarBrightness:
          [0, 2].contains(index) ? Brightness.dark : Brightness.light,
    );
    return RestorationScope(
      restorationId: restorationId,
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: statusAndNavBarTheme,
        child: Scaffold(
          extendBody: true,
          backgroundColor: index == 0 ? primaryColor : Colors.white,
          body: child,
          bottomNavigationBar: SafeArea(
            child: Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: pmMd), //to be changed based on pixel
              decoration: ShapeDecoration(
                color: Colors.white,
                shadows: [
                  BoxShadow(
                    blurRadius: shadowHeight,
                    color: Colors.black.withOpacity(.1),
                  )
                ],
                shape: SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius(
                    cornerRadius: borderRadiusDefault,
                    cornerSmoothing: 1.0,
                  ),
                ),
              ),
              child: SafeArea(
                child: FloatingNavBar(
                    rippleColor: Colors.grey[300]!,
                    hoverColor: Colors.grey[100]!,
                    gap: 6,
                    activeColor: Colors.white,
                    iconSize: iconMd,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    duration: const Duration(milliseconds: 400),
                    tabBackgroundColor: Colors.white,
                    color: primaryColor,
                    backgroundColor: Colors.green,
                    selectedIndex: index,
                    tabs: [
                      NavBarButton(
                        icon: LineIcons.home,
                        text: Text(
                          'Home',
                          style: navBarTextStyle,
                        ),
                      ),
                      NavBarButton(
                        icon: LineIcons.search,
                        text: Text(
                          'Search',
                          style: navBarTextStyle,
                        ),
                      ),
                      NavBarButton(
                        icon: LineIcons.userFriends,
                        text: Text(
                          'Friends',
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
                      NavBarButton(
                        icon: LineIcons.cog,
                        text: Text(
                          'Settings',
                          style: navBarTextStyle,
                        ),
                      ),
                    ],
                    onTabChange: onTap,
                  ),
                ),
              ),
            ),
          ),
        ),
    );
  }

  int _getSelectedIndex(String location) {
    if (location.startsWith('/dashboard')) return 0;
    if (location.startsWith('/search')) return 1;
    if (location.startsWith('/friends')) return 2;
    if (location.startsWith('/reports')) return 3;
    if (location.startsWith('/settings')) return 4;
    return 0;
  }
}
