
import 'package:auto_route/auto_route.dart';
import 'package:password_manager/main.dart';
import 'package:password_manager/screens/main/home.dart';
import 'package:password_manager/screens/main/pinCode_screen.dart';
import 'package:password_manager/screens/main/profile_setup.dart';
import 'package:password_manager/screens/main/social/add_social_screen.dart';
import 'package:password_manager/screens/profile/accounts.dart';
import 'package:password_manager/screens/settings/settings.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MyHomePage, initial: true),
    AutoRoute(page: PinCodeScreen),
    AutoRoute(page: ProfileSetUpScreen),
    AutoRoute(page: HomeScreen),
    AutoRoute(page: UserProfileScreen),
    AutoRoute(page: UserSettingsScreen),
    AutoRoute(page: AddSocialLink),
  ],
)
class $AppRouter {}