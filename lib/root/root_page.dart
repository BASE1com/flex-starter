import 'package:auto_route/auto_route.dart';
import 'package:flex_navigation/flex_navigation.dart';
import 'package:flex_starter/router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FlexTabPage(routes: [
      HomeRoute(),
      ShopRoute(),
      MyAccountRoute(),
    ]);
  }
}
