// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../main.dart' as _i1;
import '../screens/main/home.dart' as _i4;
import '../screens/main/pinCode_screen.dart' as _i2;
import '../screens/main/profile_setup.dart' as _i3;
import '../screens/main/social/add_social_screen.dart' as _i7;
import '../screens/profile/accounts.dart' as _i5;
import '../screens/settings/settings.dart' as _i6;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    MyHomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MyHomePage());
    },
    PinCodeScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PinCodeScreen());
    },
    ProfileSetUpScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ProfileSetUpScreen());
    },
    HomeScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomeScreen());
    },
    UserProfileScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.UserProfileScreen());
    },
    UserSettingsScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.UserSettingsScreen());
    },
    AddSocialLink.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.AddSocialLink());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(MyHomeRoute.name, path: '/'),
        _i8.RouteConfig(PinCodeScreen.name, path: '/pin-code-screen'),
        _i8.RouteConfig(ProfileSetUpScreen.name,
            path: '/profile-set-up-screen'),
        _i8.RouteConfig(HomeScreen.name, path: '/home-screen'),
        _i8.RouteConfig(UserProfileScreen.name, path: '/user-profile-screen'),
        _i8.RouteConfig(UserSettingsScreen.name, path: '/user-settings-screen'),
        _i8.RouteConfig(AddSocialLink.name, path: '/add-social-link')
      ];
}

/// generated route for
/// [_i1.MyHomePage]
class MyHomeRoute extends _i8.PageRouteInfo<void> {
  const MyHomeRoute() : super(MyHomeRoute.name, path: '/');

  static const String name = 'MyHomeRoute';
}

/// generated route for
/// [_i2.PinCodeScreen]
class PinCodeScreen extends _i8.PageRouteInfo<void> {
  const PinCodeScreen() : super(PinCodeScreen.name, path: '/pin-code-screen');

  static const String name = 'PinCodeScreen';
}

/// generated route for
/// [_i3.ProfileSetUpScreen]
class ProfileSetUpScreen extends _i8.PageRouteInfo<void> {
  const ProfileSetUpScreen()
      : super(ProfileSetUpScreen.name, path: '/profile-set-up-screen');

  static const String name = 'ProfileSetUpScreen';
}

/// generated route for
/// [_i4.HomeScreen]
class HomeScreen extends _i8.PageRouteInfo<void> {
  const HomeScreen() : super(HomeScreen.name, path: '/home-screen');

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i5.UserProfileScreen]
class UserProfileScreen extends _i8.PageRouteInfo<void> {
  const UserProfileScreen()
      : super(UserProfileScreen.name, path: '/user-profile-screen');

  static const String name = 'UserProfileScreen';
}

/// generated route for
/// [_i6.UserSettingsScreen]
class UserSettingsScreen extends _i8.PageRouteInfo<void> {
  const UserSettingsScreen()
      : super(UserSettingsScreen.name, path: '/user-settings-screen');

  static const String name = 'UserSettingsScreen';
}

/// generated route for
/// [_i7.AddSocialLink]
class AddSocialLink extends _i8.PageRouteInfo<void> {
  const AddSocialLink() : super(AddSocialLink.name, path: '/add-social-link');

  static const String name = 'AddSocialLink';
}
