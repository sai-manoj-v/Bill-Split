import 'package:billsplit/ui/screens/friends.dart';
import 'package:billsplit/ui/screens/home.dart';
import 'package:billsplit/ui/screens/dashboard.dart';
import 'package:billsplit/ui/screens/reports.dart';
import 'package:billsplit/ui/screens/search.dart';
import 'package:billsplit/ui/screens/settings.dart';
import 'package:billsplit/ui/widgets/fade_transition_page.dart';
import 'package:billsplit/utils/constants/colors.dart';
import 'package:billsplit/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const BillSplitApp());
}

class BillSplitApp extends StatefulWidget {
  const BillSplitApp({super.key});

  @override
  State<BillSplitApp> createState() => _MainAppState();
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

class _MainAppState extends State<BillSplitApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.system,
      theme: BillSplitTheme.lightTheme,
      darkTheme: BillSplitTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      routerConfig: GoRouter(
        navigatorKey: _rootNavigatorKey,
        restorationScopeId: 'router',
        initialLocation: '/dashboard',
        redirect: (context, state) {
          if (state.path == '/') {
            return '/dashboard';
          }
          return null;
        },
        debugLogDiagnostics: true,
        routes: [
          ShellRoute(
            navigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state, child) {
              return MaterialPage(
                restorationId: 'router.shell',
                child: Home(
                  restorationId: 'home',
                  child: child,
                  onTap: (index) {
                    if (index == 0) {
                      context.go('/dashboard');
                    } else if (index == 1) {
                      context.go('/search');
                    } else if (index == 2) {
                      context.go('/friends');
                    } else if (index == 3) {
                      context.go('/reports');
                    } else {
                      context.go('/settings');
                    }
                  },
                ),
              );
            },
            routes: [
              GoRoute(
                path: '/dashboard',
                pageBuilder: (context, state) {
                  return FadeTransitionPage(
                    key: state.pageKey,
                    restorationId: 'route.dashboard',
                    child: const DashboardPage(restorationId: 'dashboard'),
                  );
                },
              ),
              GoRoute(
                path: '/search',
                pageBuilder: (context, state) {
                  return FadeTransitionPage(
                    key: state.pageKey,
                    restorationId: 'route.search',
                    child: const Search(restorationId: 'search'),
                  );
                },
              ),
              GoRoute(
                path: '/friends',
                pageBuilder: (context, state) {
                  return FadeTransitionPage(
                    key: state.pageKey,
                    restorationId: 'route.friends',
                    child: const Friends(restorationId: 'friends'),
                  );
                },
              ),
              GoRoute(
                path: '/reports',
                pageBuilder: (context, state) {
                  return FadeTransitionPage(
                    key: state.pageKey,
                    restorationId: 'route.reports',
                    child: const Reports(restorationId: 'reports'),
                  );
                },
              ),
              GoRoute(
                path: '/settings',
                pageBuilder: (context, state) {
                  return FadeTransitionPage(
                    key: state.pageKey,
                    restorationId: 'route.settings',
                    child: const Settings(restorationId: 'settings'),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
