import 'package:flutter/material.dart';
import 'package:flutter_inventory/Pages/Dashboard.dart';
import 'package:flutter_inventory/Pages/Inventory.dart';
import 'package:flutter_inventory/Pages/Item%20Catalog.dart';
import 'Pages/Home.dart';
import 'package:go_router/go_router.dart';
void main() {
  runApp(const MyApp());

}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GoRouter router = GoRouter(
      routes: [
        ShellRoute(
          builder: (context, state, child) => Home(child: child,),
          routes: [
            GoRoute(
              name: 'Dashboard',
                path: '/',
                builder: (context, state) => Dashboard(),
              pageBuilder: (context, state) => _noAnimation(context: context, state: state, child: Dashboard()),
            ),
            GoRoute(
              name: 'Inventory',
              path: '/inventory',
              builder: (context, state) => Inventory(),
              pageBuilder: (context, state) => _noAnimation(context: context, state: state, child: Inventory()),
            ),
            GoRoute(
              name: 'Catalog',
              path: '/catalog',
              builder: (context, state) => Catalog(),
              pageBuilder: (context, state) => _noAnimation(context: context, state: state, child: Catalog()),
            ),

          ]
        )
      ],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,

    );
  }
}

CustomTransitionPage _noAnimation({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}){
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) => child,
  );
}