
import 'package:get_it/get_it.dart';
import 'package:padel/src/services/remote_config.dart';
import 'package:padel/src/services/styled_dialog_controller.dart';

//cache
import '../core/cache/cache_manager.dart';
import '../core/cache/storage/cache_storage.dart';


//services
import 'data/datasources/remote/api_service.dart';
import 'data/repositories/api_repository_impl.dart';
import 'domain/repositories/api_repository.dart';
import 'services/storage.dart';
import 'services/navigation.dart';
import 'services/analytics.dart';
import 'services/logger.dart';

final locator = GetIt.instance;

Future<void> initializeDependencies() async {

  locator.registerLazySingleton(() => FirebaseAnalyticsService());

  final storage = await LocalStorageService.getInstance();
  locator.registerSingleton<LocalStorageService>(storage!);

  final navigation = NavigationService();
  locator.registerSingleton<NavigationService>(navigation);


  final remoteConfig = await RemoteConfigService.getInstance();
  locator.registerSingleton<RemoteConfigService>(remoteConfig!);

  final styledDialogController = StyledDialogController<Status>();
  locator.registerSingleton<StyledDialogController>(styledDialogController);

  final logger = LoggerService();
  locator.registerSingleton<LoggerService>(logger);


  locator.registerSingleton<CacheManager>(CacheManager(CacheStorage()));

  locator.registerSingleton<ApiService>(
    ApiService(),
  );

  locator.registerSingleton<ApiRepository>(
    ApiRepositoryImpl(locator<ApiService>()),
  );

}