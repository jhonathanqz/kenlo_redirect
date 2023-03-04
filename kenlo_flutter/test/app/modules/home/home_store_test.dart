import 'package:flutter_test/flutter_test.dart';

import 'package:kenlo_flutter/app/modules/home/presentation/mobx/home_store.dart';

void main() {
  late HomeStore store;

  setUpAll(() {
    store = HomeStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
