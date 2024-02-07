import 'package:asyncstate/asyncstate.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:health_center_core/src/loader/health_center_loader.dart';
import 'package:health_center_core/src/theme/health_center_theme.dart';
import 'package:flutter_getit/flutter_getit.dart';

class HealthCenterAppCore extends StatelessWidget {
  const HealthCenterAppCore(
      {super.key,
      this.bindings,
      this.pagesRouters,
      this.pagesBuilders,
      this.modules,
      required this.title});

  final ApplicationBindings? bindings;
  final List<FlutterGetItPageRouter>? pagesRouters;
  final List<FlutterGetItPageBuilder>? pagesBuilders;
  final List<FlutterGetItModule>? modules;
  final String title;

  @override
  Widget build(BuildContext context) {
    return FlutterGetIt(
        debugMode: kDebugMode,
        bindings: bindings,
        pages: [...pagesRouters ?? [], ...pagesBuilders ?? []],
        modules: modules,
        builder: ((context, routes, flutterGetItNavObserver) {
          return AsyncStateBuilder(
              loader: HealthCenterLoader(),
              builder: (navigatorObserver) {
                return MaterialApp(
                  title: title,
                  theme: HealthCenterTheme.lightTheme,
                  darkTheme: HealthCenterTheme.darkTheme,
                  navigatorObservers: [
                    navigatorObserver,
                    flutterGetItNavObserver
                  ],
                  routes: routes,
                  debugShowCheckedModeBanner: false,
                );
              });
        }));
  }
}
