import 'package:flutter_test/flutter_test.dart';

import 'package:kenlo_flutter/app/modules/splash/presentation/mobx/splash_store.dart';

void main() {
  late SplashStore store;

  setUpAll(() {
    store = SplashStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
