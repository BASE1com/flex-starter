import 'package:flex_starter/router.dart';
import 'package:flutter/material.dart';

class StarterApp extends StatelessWidget {
  StarterApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
  }
}
