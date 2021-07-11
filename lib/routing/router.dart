import 'package:dashboard_flutter_web/pages/authentication/authentication.dart';
import 'package:dashboard_flutter_web/pages/clients/clients.dart';
import 'package:dashboard_flutter_web/pages/drivers/drivers.dart';
import 'package:dashboard_flutter_web/pages/overview/overview.dart';
import 'package:dashboard_flutter_web/routing/routes.dart';
import 'package:flutter/material.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(OverviewPage());
    case DriversPageRoute:
      return _getPageRoute(DriversPage());
    case ClientsPageRoute:
      return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(OverviewPage());
  }
}

Route<dynamic>? _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
