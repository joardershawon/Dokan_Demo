import 'package:auto_route/auto_route.dart';
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
          path: 'profile',
          name: 'ProfileRouter',
          page: ProfilePage,
        ),
        AutoRoute(
          path: 'signup',
          name: 'SignUpPageRouter',
          page: SignUpPage,
        ),
        AutoRoute(
          path: 'login',
          name: 'LoginPageRouter',
          page: LoginPage,
        ),
        // AutoRoute(
        //   path: 'settings',
        //   name: 'SettingsRouter',
        //   page: SettingsPage,
        // ),
        // AutoRoute(
        //   path: 'profile',
        //   name: 'profileRouter',
        //   page: RegistrationPage,
        // ),
      ],
    ),
    //** FULL PAGE ROUTES */
  ],
)
class $AppRouter {}
