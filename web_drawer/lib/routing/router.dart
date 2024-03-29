import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_drawer/routing/route_names.dart';
import 'package:web_drawer/views/about/about_view.dart';
import 'package:web_drawer/views/clientes/clientes_view.dart';
import 'package:web_drawer/views/jobs/jobs_view.dart';
import 'package:web_drawer/views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView(), settings.name);
    case AboutRoute:
      return _getPageRoute(AboutView("About"), settings.name);
    case JobsRoute:
      return _getPageRoute(JobsView("Jobs"), settings.name);
    case ClientesRoute:
      return _getPageRoute(ClientesView("Clientes"), settings.name);
    default:
  }
}

PageRoute _getPageRoute(Widget child, String routeName) {
  return _FadeRoute(child: child, routeName: routeName);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                child,
            settings: RouteSettings(name: routeName),
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}

