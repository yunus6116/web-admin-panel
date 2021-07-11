import 'package:dashboard_flutter_web/constants/controller.dart';
import 'package:dashboard_flutter_web/routing/router.dart';
import 'package:dashboard_flutter_web/routing/routes.dart';
import 'package:flutter/cupertino.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: OverViewPageRoute,
    );
