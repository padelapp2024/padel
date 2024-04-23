//utils
import 'dart:io';

import 'package:padel/src/domain/repositories/api_repository.dart';

import '../datasources/remote/api_service.dart';


//services
import '../../locator.dart';

import '../../../core/cache/cache_manager.dart';
import 'base/base_api_repository.dart';


class ApiRepositoryImpl extends BaseApiRepository implements ApiRepository {
  final ApiService _apiService;

  ApiRepositoryImpl(this._apiService);

  Future<bool> checkConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      } else {
        return false;
      }
    } on SocketException catch (_) {
      return false;
    }
  }

}
