import 'package:ajent/app/modules/MyCourseDetail/MyCourseDetailPage.dart';
import 'package:ajent/app/modules/add_course/add_course_binding.dart';
import 'package:ajent/app/modules/add_course/add_course_page.dart';
import 'package:ajent/app/modules/auth/auth_binding.dart';
import 'package:ajent/app/modules/auth/login_page.dart';
import 'package:ajent/app/modules/auth/signup_page.dart';
import 'package:ajent/app/modules/auth/welcome_page.dart';
import 'package:ajent/app/modules/home/home_binding.dart';
import 'package:ajent/app/modules/home/home_page.dart';
import 'package:ajent/app/modules/my_profile/my_profile_page.dart';
import 'package:ajent/app/modules/splash/splash_binding.dart';
import 'package:ajent/app/modules/splash/splash_page.dart';
import 'package:get/get.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(name: Routes.WELCOME, page: () => WelcomePage()),
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding()),
    GetPage(name: Routes.AUTH, page: () => LoginPage(), binding: AuthBinding()),
    GetPage(
      name: Routes.SIGNUP,
      page: () => SignupPage(),
      binding: AuthBinding(),
    ),
    GetPage(name: Routes.PROFILE, page: () => MyProfilePage()),
    GetPage(name: Routes.MYCOURSEDETAIL,page: () => MyCourseDetailPage()),
    GetPage(name: Routes.ADD_COURSE, page: () => AddCoursePage()),
  ];
}
