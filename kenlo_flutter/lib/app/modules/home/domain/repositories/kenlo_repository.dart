import 'package:kenlo_flutter/app/modules/home/domain/entities/city.dart';

import '../entities/city_response.dart';

abstract class KenloRepository {
  Future<CityResponse> getCities();
}
