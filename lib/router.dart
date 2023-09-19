import 'package:auto_route/auto_route.dart';

import 'package:flex_starter/home/home_page.dart';
import 'package:flex_starter/my_account/my_account_page.dart';
import 'package:flex_starter/root/root_page.dart';
import 'package:flex_starter/shop/category_list/category_list_page.dart';
import 'package:flex_starter/shop/product_detail/product_detail_page.dart';
import 'package:flex_starter/shop/product_list/product_list_page.dart';
import 'package:flex_starter/shop/shop_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: RootRoute.page,
          path: '/',
          children: [
            AutoRoute(
              path: 'home',
              page: HomeRoute.page,
              meta: const {
                'label': 'Home',
                'icon': 0xe318 // Code point of Icons.home,
              },
            ),
            AutoRoute(
              path: 'shop',
              page: ShopRoute.page,
              meta: const {
                'label': 'Shop',
                'icon': 0xe567 // Code point of Icons.search,
              },
              children: [
                AutoRoute(
                  path: 'category_list',
                  page: CategoryListRoute.page,
                  initial: true,
                ),
                AutoRoute(
                  path: 'product_list',
                  page: ProductListRoute.page,
                ),
                AutoRoute(
                  path: 'product_detail',
                  page: ProductDetailRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: 'account',
              page: MyAccountRoute.page,
              meta: const {
                'label': 'My Account',
                'icon': 0xee35, // Code point of Icons.attach_money,
              },
            ),
          ],
        ),
      ];
}
