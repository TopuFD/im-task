
import 'package:get/get.dart';
import 'package:vedio_call/view/auth_screen/signin_screen.dart';
import 'package:vedio_call/view/auth_screen/signup_screen.dart';
import 'package:vedio_call/view/bottom_nav_bar.dart';
import 'package:vedio_call/view/home_screen/home_screen.dart';
import 'package:vedio_call/view/setting_page/settings.dart';
//  routes
class AppRoute {
  static const signinScreen = "/signinScreen";
  static const signUpScreen = "/signUpScreen";
  static const bottomNavBar = "/bottomNavBar";
  static const homeScreen = "/homeScreen";
  static const settingsPage = "/settingsPage";
  static List<GetPage> pages = [
    GetPage(name: signinScreen, page: ()=> SigninScreen()),
    GetPage(name: signUpScreen, page: ()=> SignupScreen()),
    GetPage(name: bottomNavBar, page: ()=> const BottomNavBar()),
    GetPage(name: homeScreen, page: ()=> HomeScreen()),
    GetPage(name: settingsPage, page: ()=> const SettingsPage()),
  ];

}