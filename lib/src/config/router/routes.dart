import 'package:flutter/material.dart';
import 'package:padel/src/config/router/separated/auth_routes.dart';
import 'package:padel/src/presentation/view/global/undefined_view.dart';
import 'package:padel/src/utils/constants/string.dart';
import 'package:showcaseview/showcaseview.dart';

//utils

//routes


import './route_type.dart';

class Routes {
  static Map<String, RouteType> _resolveRoutes() {
    return {
      ...authRoutes,
      /*...homeRoutes,
      ...workRoutes,
      ...navigationRoutes,
      ...summaryRoutes,
      ...collectionRoutes,
      ...drawerRoutes,
      ...coreRoutes,
      ...issuesRoutes,
      ...stateRoutes,
      ...developerRoutes,*/
    };
  }

  static Route onGenerateRoutes(RouteSettings settings) {
    var routes = _resolveRoutes();
    try {
      final child = routes[settings.name];

      if (child != null) {
        Widget builder(BuildContext c) => child(c, settings);

        if (settings.name == AppRoutes.splash) {
          return MaterialPageRoute(builder: builder);
        }

        if (settings.name!.contains('popup')) {
          return MaterialPageRoute<String>(
            builder: builder,
            fullscreenDialog: true,
          );
        }

        return MaterialPageRoute(
            builder: (context) => ShowCaseWidget(
                  autoPlayDelay: const Duration(seconds: 3),
                  blurValue: 1,
                  builder: Builder(builder: builder),
                ));
      } else {
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                UndefinedView(name: settings.name));
      }
    } catch (e) {
      return MaterialPageRoute(
          builder: (BuildContext context) =>
              UndefinedView(name: settings.name));
    }
  }
}
