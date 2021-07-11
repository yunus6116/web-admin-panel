import 'package:dashboard_flutter_web/constants/style.dart';
import 'package:dashboard_flutter_web/controllers/menu_controller.dart';
import 'package:dashboard_flutter_web/controllers/navigation_controller.dart';
import 'package:dashboard_flutter_web/layout.dart';
import 'package:dashboard_flutter_web/pages/404/error_page.dart';
import 'package:dashboard_flutter_web/pages/authentication/authentication.dart';
import 'package:dashboard_flutter_web/routing/routes.dart';

import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  Get.put(MenuController());
  Get.put(NavigationController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AuthenticationPageRoute,
      unknownRoute: GetPage(
        name: 'nout-found',
        page: () => PageNotFound(),
        transition: Transition.fadeIn,
      ),
      getPages: [
        GetPage(name: RootRoute, page: () => SiteLayout()),
        GetPage(
            name: AuthenticationPageRoute, page: () => AuthenticationPage()),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Dash',
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        textTheme:
            GoogleFonts.mulishTextTheme(Theme.of(context).textTheme).apply(
          bodyColor: Colors.black,
        ),
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        }),
        primaryColor: Colors.blue,
      ),
    );
  }
}
