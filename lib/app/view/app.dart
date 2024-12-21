import 'package:flutter/material.dart';
import 'package:flutter_side_menu/flutter_side_menu.dart';
import 'package:go_router/go_router.dart';
import 'package:scimate_app/home/home.dart';
import 'package:scimate_app/l10n/l10n.dart';
import 'package:scimate_app/project/project.dart';

class App extends StatelessWidget {
  App({super.key});

  final _router = GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: '/project/1',
        builder: (context, state) => const ProjectDetailPage(),
      ),
      ShellRoute(
        builder: (context, state, child) => AppScaffold(body: child),
        routes: [
          GoRoute(
            path: '/home',
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: '/project',
            builder: (context, state) => const ProjectOverviewPage(),
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'SciMate',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: _router,
    );
  }
}

class AppScaffold extends StatelessWidget {
  const AppScaffold({required this.body, super.key});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    final selectedIndex = _calculateSelectedIndex(context);
    return Scaffold(
      body: Row(
        children: [
          SideMenu(
            builder: (data) => SideMenuData(
              header: const Text('Sci'),
              items: <SideMenuItemDataTile>[
                SideMenuItemDataTile(
                  title: 'Home',
                  icon: Icon(
                    Icons.home,
                    color: selectedIndex == 0 ? Colors.blue : Colors.grey,
                  ),
                  isSelected: selectedIndex == 0,
                  onTap: () => context.go('/home'),
                ),
                SideMenuItemDataTile(
                  title: 'Project',
                  icon: Icon(
                    Icons.folder,
                    color: selectedIndex == 1 ? Colors.blue : Colors.grey,
                  ),
                  isSelected: selectedIndex == 1,
                  onTap: () => context.go('/project'),
                ),
              ],
              footer: const Text('Footer'),
            ),
          ),
          Expanded(child: body),
        ],
      ),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final uri = GoRouterState.of(context).uri.toString();
    if (uri.startsWith('/home')) {
      return 0;
    } else if (uri.startsWith('/project')) {
      return 1;
    }

    return 0;
  }
}
