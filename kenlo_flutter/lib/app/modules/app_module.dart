import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'package:kenlo_flutter/app/modules/app_widget.dart';
import 'package:kenlo_flutter/app/modules/home/home_module.dart';
import 'package:kenlo_flutter/app/modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        HomeModule(),
      ];

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: SplashModule()),
        ModuleRoute('/home', module: HomeModule()),
      ];

  @override
  // ignore: override_on_non_overriding_member
  Widget get bootstrap => const AppWidget();
}
