import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_inventory/presentation/Pages/Dashboard.dart';
import 'package:flutter_inventory/presentation/Pages/Home.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:go_router/go_router.dart';

import 'presentation/Pages/Inventory.dart';
import 'presentation/Pages/Item Catalog.dart';
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
                builder: (context, state) => const Dashboard(),
              pageBuilder: (context, state) => _noAnimation(context: context, state: state, child: Dashboard()),
            ),
            GoRoute(
              name: 'Inventory',
              path: '/inventory',
              builder: (context, state) => const Inventory(),
              pageBuilder: (context, state) => _noAnimation(context: context, state: state, child: Inventory()),
            ),
            GoRoute(
              name: 'Catalog',
              path: '/catalog',
              builder: (context, state) => const Catalog(),
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

// Helper methods
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
void fncConnectDatabase() async{
  try{
    WidgetsFlutterBinding.ensureInitialized();
    await Supabase.initialize(
      url: "https://bkoemwprwmqmujwnyasq.supabase.co",
      anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJrb2Vtd3Byd21xbXVqd255YXNxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjU3NzI2MzQsImV4cCI6MjA0MTM0ODYzNH0.mIaoOlYv6xwjI3ARKZe7Bh6WTbxhQMHoqKO5T4Um4Mg",
    );
  }
  on Exception catch(e){
    log(e.toString());
  }
}