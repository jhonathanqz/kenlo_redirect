import 'package:flutter_modular/flutter_modular.dart';

import 'package:kenlo_flutter/app/modules/splash/presentation/mobx/splash_store.dart';
import 'package:kenlo_flutter/app/modules/splash/presentation/pages/splash_page.dart';

class SplashModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SplashStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const SplashPage()),
  ];
}
