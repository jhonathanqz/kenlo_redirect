import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import 'package:kenlo_flutter/app/modules/client/client_http.dart';

part 'splash_store.g.dart';

class SplashStore = _SplashStoreBase with _$SplashStore;

abstract class _SplashStoreBase with Store {
  @observable
  bool isLoading = false;

  @action
  Future<void> dismissSplash() async {
    ClientHTTP.setupClient();
    await Future.delayed(const Duration(seconds: 3));

    Modular.to.navigate('/home/');
  }
}
