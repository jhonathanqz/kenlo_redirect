import 'package:flutter_modular/flutter_modular.dart';

import 'package:kenlo_flutter/app/modules/home/data/provider/kenlo_provider_impl.dart';
import 'package:kenlo_flutter/app/modules/home/domain/repositories/kenlo_repository.dart';
import 'package:kenlo_flutter/app/modules/home/domain/usecase/get_cities_use_case.dart';
import 'package:kenlo_flutter/app/modules/home/infrastructure/repositories/contracts/kenlo_provider.dart';
import 'package:kenlo_flutter/app/modules/home/infrastructure/repositories/kenlo_repository_impl.dart';
import 'package:kenlo_flutter/app/modules/home/presentation/mobx/home_store.dart';
import 'package:kenlo_flutter/app/modules/home/presentation/pages/home_page.dart';

import '../client/client_http.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton<KenloProvider>(
      (i) => KenloProviderImpl(
        client: ClientHTTP.clientBase,
      ),
      export: true,
    ),
    Bind.lazySingleton<KenloRepository>(
      (i) => KenloRepositoryImpl(
        kenloProvider: i<KenloProvider>(),
      ),
      export: true,
    ),
    Bind.lazySingleton<GetCitiesUseCase>(
      (i) => GetCitiesUseCase(
        kenloRepository: i<KenloRepository>(),
      ),
      export: true,
    ),
    Bind.lazySingleton<HomeStore>(
      (i) => HomeStore(
        getCitiesUseCase: i.get(),
      ),
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HomePage()),
  ];
}
