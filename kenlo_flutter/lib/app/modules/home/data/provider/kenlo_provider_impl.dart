import 'package:dio/dio.dart';

import 'package:kenlo_flutter/app/modules/home/data/model/city_model.dart';
import 'package:kenlo_flutter/app/modules/home/data/model/city_response_model.dart';
import 'package:kenlo_flutter/app/modules/home/domain/entities/city.dart';
import 'package:kenlo_flutter/app/modules/home/domain/entities/city_response.dart';
import 'package:kenlo_flutter/app/modules/home/infrastructure/repositories/contracts/kenlo_provider.dart';

class KenloProviderImpl implements KenloProvider {
  final Dio client;
  KenloProviderImpl({
    required this.client,
  });

  @override
  Future<CityResponse> getCities() async {
    CityResponse _cityResponse = const CityResponse();
    try {
      final _response = await client.get('/lista');

      final _model = CityResponseModel.fromJson(_response.data);
      _cityResponse = CityResponse(
        total: _model.total ?? 0,
        cities: _buildCityList(_model.items),
      );
      return _cityResponse;
    } catch (e) {}
    return _cityResponse;
  }

  List<City> _buildCityList(List<CityModel>? cityModel) {
    List<City> _cities = [];
    if (cityModel != null && cityModel.isNotEmpty) {
      for (var e in cityModel) {
        final _city = City(
          id: e.id ?? 0,
          city: e.city ?? '',
          lat: e.lat ?? '',
          long: e.long ?? '',
        );
        _cities.add(_city);
      }
    }
    return _cities;
  }
}
