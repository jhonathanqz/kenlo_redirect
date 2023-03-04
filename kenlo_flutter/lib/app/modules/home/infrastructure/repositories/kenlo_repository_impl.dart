import 'package:kenlo_flutter/app/modules/home/domain/entities/city.dart';
import 'package:kenlo_flutter/app/modules/home/domain/entities/city_response.dart';
import 'package:kenlo_flutter/app/modules/home/domain/repositories/kenlo_repository.dart';
import 'package:kenlo_flutter/app/modules/home/infrastructure/repositories/contracts/kenlo_provider.dart';

class KenloRepositoryImpl implements KenloRepository {
  final KenloProvider kenloProvider;

  KenloRepositoryImpl({required this.kenloProvider});

  @override
  Future<CityResponse> getCities() async {
    try {
      return await kenloProvider.getCities();
    } catch (e) {
      rethrow;
    }
  }
}
