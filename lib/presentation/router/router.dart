import 'package:auto_route/auto_route.dart';
import 'package:dokan_demo/presentation/blank/empty_scaffold.dart';
import 'package:dokan_demo/presentation/loginPage/login_page.dart';
import 'package:dokan_demo/presentation/signUpPage/sign_up_page.dart';
import '../homePage/home_page.dart';
import '../homePage/widgets/home_body.dart';
import '../profilePage/profile_page.dart';

@MaterialAutoRouter(
  preferRelativeImports: true,
  replaceInRouteName: ('Page, Route'),
  routes: [
    AutoRoute(
      path: '/',
      name: 'LoginPageRouter',
      page: LoginPage,
    ),
    AutoRoute(
      path: 'signup',
      name: 'SignUpPageRouter',
      page: SignUpPage,
    ),
    AutoRoute(
      path: 'home-page',
      name: 'HomeRouter',
      page: HomePage,
      children: [
        AutoRoute(
          path: 'home',
          name: 'HomeBodyRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              name: 'HomebodyRouter',
              page: HomeBody,
            ),
          ],
        ),
        //** BOTTOM ITEMS ROUTE */
        AutoRoute(
          path: 'empty-scaffold',
          name: 'EmptyScaffoldRouter',
          page: EmptyScaffold,
        ),
        AutoRoute(
          path: 'profile',
          name: 'ProfileRouter',
          page: ProfilePage,
        ),
      ],
    ),
    //** FULL PAGE ROUTES */
  ],
)
class $AppRouter {}
