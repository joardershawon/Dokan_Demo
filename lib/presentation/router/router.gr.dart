// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i7;

import '../homePage/home_page.dart' as _i1;
import '../homePage/widgets/home_body.dart' as _i6;
import '../loginPage/login_page.dart' as _i5;
import '../profilePage/profile_page.dart' as _i3;
import '../signUpPage/sign_up_page.dart' as _i4;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    HomeBodyRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ProfilePage());
    },
    SignUpPageRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignUpPage());
    },
    LoginPageRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.LoginPage());
    },
    HomebodyRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.HomeBody());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeRouter.name, path: '/', children: [
          _i2.RouteConfig(HomeBodyRouter.name,
              path: 'home',
              parent: HomeRouter.name,
              children: [
                _i2.RouteConfig(HomebodyRouter.name,
                    path: '', parent: HomeBodyRouter.name)
              ]),
          _i2.RouteConfig(ProfileRouter.name,
              path: 'profile', parent: HomeRouter.name),
          _i2.RouteConfig(SignUpPageRouter.name,
              path: 'signup', parent: HomeRouter.name),
          _i2.RouteConfig(LoginPageRouter.name,
              path: 'login', parent: HomeRouter.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRouter extends _i2.PageRouteInfo<void> {
  const HomeRouter({List<_i2.PageRouteInfo>? children})
      : super(HomeRouter.name, path: '/', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeBodyRouter extends _i2.PageRouteInfo<void> {
  const HomeBodyRouter({List<_i2.PageRouteInfo>? children})
      : super(HomeBodyRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeBodyRouter';
}

/// generated route for
/// [_i3.ProfilePage]
class ProfileRouter extends _i2.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile');

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i4.SignUpPage]
class SignUpPageRouter extends _i2.PageRouteInfo<void> {
  const SignUpPageRouter() : super(SignUpPageRouter.name, path: 'signup');

  static const String name = 'SignUpPageRouter';
}

/// generated route for
/// [_i5.LoginPage]
class LoginPageRouter extends _i2.PageRouteInfo<void> {
  const LoginPageRouter() : super(LoginPageRouter.name, path: 'login');

  static const String name = 'LoginPageRouter';
}

/// generated route for
/// [_i6.HomeBody]
class HomebodyRouter extends _i2.PageRouteInfo<void> {
  const HomebodyRouter() : super(HomebodyRouter.name, path: '');

  static const String name = 'HomebodyRouter';
}
