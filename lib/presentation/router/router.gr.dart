// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i8;

import '../blank/empty_scaffold.dart' as _i5;
import '../homePage/home_page.dart' as _i3;
import '../homePage/widgets/home_body.dart' as _i7;
import '../loginPage/login_page.dart' as _i1;
import '../profilePage/profile_page.dart' as _i6;
import '../signUpPage/sign_up_page.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    LoginPageRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginPage());
    },
    SignUpPageRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignUpPage());
    },
    HomeRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    HomeBodyRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    EmptyScaffoldRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyScaffold());
    },
    ProfileRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ProfilePage());
    },
    HomebodyRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.HomeBody());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(LoginPageRouter.name, path: '/'),
        _i4.RouteConfig(SignUpPageRouter.name, path: 'signup'),
        _i4.RouteConfig(HomeRouter.name, path: 'home-page', children: [
          _i4.RouteConfig(HomeBodyRouter.name,
              path: 'home',
              parent: HomeRouter.name,
              children: [
                _i4.RouteConfig(HomebodyRouter.name,
                    path: '', parent: HomeBodyRouter.name)
              ]),
          _i4.RouteConfig(EmptyScaffoldRouter.name,
              path: 'empty-scaffold', parent: HomeRouter.name),
          _i4.RouteConfig(ProfileRouter.name,
              path: 'profile', parent: HomeRouter.name)
        ])
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginPageRouter extends _i4.PageRouteInfo<void> {
  const LoginPageRouter() : super(LoginPageRouter.name, path: '/');

  static const String name = 'LoginPageRouter';
}

/// generated route for
/// [_i2.SignUpPage]
class SignUpPageRouter extends _i4.PageRouteInfo<void> {
  const SignUpPageRouter() : super(SignUpPageRouter.name, path: 'signup');

  static const String name = 'SignUpPageRouter';
}

/// generated route for
/// [_i3.HomePage]
class HomeRouter extends _i4.PageRouteInfo<void> {
  const HomeRouter({List<_i4.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home-page', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class HomeBodyRouter extends _i4.PageRouteInfo<void> {
  const HomeBodyRouter({List<_i4.PageRouteInfo>? children})
      : super(HomeBodyRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeBodyRouter';
}

/// generated route for
/// [_i5.EmptyScaffold]
class EmptyScaffoldRouter extends _i4.PageRouteInfo<void> {
  const EmptyScaffoldRouter()
      : super(EmptyScaffoldRouter.name, path: 'empty-scaffold');

  static const String name = 'EmptyScaffoldRouter';
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRouter extends _i4.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile');

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i7.HomeBody]
class HomebodyRouter extends _i4.PageRouteInfo<void> {
  const HomebodyRouter() : super(HomebodyRouter.name, path: '');

  static const String name = 'HomebodyRouter';
}
