import 'package:kenlo_flutter/app/modules/home/domain/entities/city.dart';
import 'package:kenlo_flutter/app/modules/home/domain/entities/city_response.dart';

abstract class KenloProvider {
  Future<CityResponse> getCities();
}
