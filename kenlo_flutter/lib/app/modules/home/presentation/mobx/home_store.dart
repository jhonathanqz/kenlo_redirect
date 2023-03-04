import 'package:mobx/mobx.dart';

import 'package:kenlo_flutter/app/modules/home/domain/entities/city_response.dart';
import 'package:kenlo_flutter/app/modules/home/domain/usecase/get_cities_use_case.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  final GetCitiesUseCase getCitiesUseCase;

  _HomeStoreBase({
    required this.getCitiesUseCase,
  });

  @observable
  bool isLoading = false;

  @observable
  CityResponse? cityResponse;

  @action
  Future<void> getCities() async {
    try {
      isLoading = true;
      cityResponse = await getCitiesUseCase.call();
      isLoading = false;
    } catch (e) {
      isLoading = false;
    }
    isLoading = false;
  }
}
