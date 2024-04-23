import 'dart:convert';

import 'cache_manager.dart';
import 'cache_wrapper.dart';
import 'storage/storage.dart';

abstract class CacheStrategy {
  static const defaultTTLValue = 60 * 60 * 1000;

  Future _storeCacheData<T>(String key, T value, Storage storage) async {
    final cacheWrapper =
        CacheWrapper<T>(value, DateTime.now().millisecondsSinceEpoch);
    await storage.write(key, jsonEncode(cacheWrapper.toJson()));
  }

  _isValid<T>(
          CacheWrapper<T> cacheWrapper, bool keepExpiredCache, int ttlValue) =>
      keepExpiredCache ||
      DateTime.now().millisecondsSinceEpoch <
          cacheWrapper.cachedDate + ttlValue;

  Future<T> invokeAsync<T>(
      AsyncBloc<T> asyncBloc, String key, Storage storage) async {
    final asyncData = await asyncBloc();
    _storeCacheData(key, asyncData, storage);
    return asyncData;
  }

  Future<T?> fetchCacheData<T>(
      String key, SerializerBloc serializerBloc, Storage storage,
      {bool keepExpiredCache = false, int ttlValue = defaultTTLValue}) async {
    final value = await storage.read(key);
    if (value != null) {
      final cacheWrapper = CacheWrapper.fromJson(jsonDecode(value));
      if (_isValid(cacheWrapper, keepExpiredCache, ttlValue)) {
        return serializerBloc(cacheWrapper.data);
      }
    }
    return null;
  }

  Future<T?> applyStrategy<T>(AsyncBloc<T> asyncBloc, String key,
      SerializerBloc serializerBloc, int ttlValue, Storage storage);
}
