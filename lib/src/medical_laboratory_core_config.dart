import 'package:asyncstate/asyncstate.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_experience_medical_laboratory_core/src/loader/medical_laboratory_loader.dart';
import 'package:flutter_experience_medical_laboratory_core/src/theme/medical_laboratory_theme.dart';
import 'package:flutter_getit/flutter_getit.dart';

class MedicalLaboratoryAppCore extends StatelessWidget {
  const MedicalLaboratoryAppCore(
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
              loader: MedicalLaboratoryLoader(),
              builder: (navigatorObserver) {
                return MaterialApp(
                  title: title,
                  theme: MedicalLaboratoryTheme.lightTheme,
                  darkTheme: MedicalLaboratoryTheme.darkTheme,
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
