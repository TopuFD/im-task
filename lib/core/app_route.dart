
import 'package:get/get.dart';
import 'package:vedio_call/view/auth_screen/forget_pass_screen.dart';
import 'package:vedio_call/view/auth_screen/get_otp_screen.dart';
import 'package:vedio_call/view/auth_screen/reset_pass_screen.dart';
import 'package:vedio_call/view/auth_screen/signin_screen.dart';
import 'package:vedio_call/view/auth_screen/signup_screen.dart';
import 'package:vedio_call/view/bottom_nav_bar.dart';
import 'package:vedio_call/view/home_screen/home_screen.dart';
import 'package:vedio_call/view/setting_page/about.dart';
import 'package:vedio_call/view/setting_page/privacy_policy.dart';
import 'package:vedio_call/view/setting_page/settings.dart';
//  routes
class AppRoute {
  static const signinScreen = "/signinScreen";
  static const signUpScreen = "/signUpScreen";
  static const bottomNavBar = "/bottomNavBar";
  static const homeScreen = "/homeScreen";
  static const settingsPage = "/settingsPage";
  static const pricacyPolicy = "/privacyPolicy";
  static const aboutPage = "/aboutPage";
  static const forgetPassScreen = "/forgetPassScreen";
  static const getOtpScreen = "/getOtpScreen";
  static const resetPassScreen = "/resetPassScreen";
  static const jdkfjk = "/jdkfjk";
  static List<GetPage> pages = [
    GetPage(name: signinScreen, page: ()=> SigninScreen()),
    GetPage(name: signUpScreen, page: ()=> SignupScreen()),
    GetPage(name: bottomNavBar, page: ()=> const BottomNavBar()),
    GetPage(name: homeScreen, page: ()=> HomeScreen()),
    GetPage(name: settingsPage, page: ()=> const SettingsPage()),
    GetPage(name: pricacyPolicy, page: ()=> const PrivacyPolicy()),
    GetPage(name: aboutPage, page: ()=> const AboutScreen()),
    // GetPage(name: forgetPassScreen, page: ()=> const ForgetPassScreen()),
    GetPage(name: getOtpScreen, page: ()=> const GetOtpScreen()),
    GetPage(name: resetPassScreen, page: ()=> const ResetPassScreen()),
    GetPage(name: jdkfjk, page: ()=>  BlurBackground()),
  ];

}