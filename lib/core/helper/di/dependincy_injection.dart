import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:get_it/get_it.dart';

import '../../local_cubit/global_cubit.dart';

final di = GetIt.instance;

void initServicesLocator() {

  di.registerLazySingleton(() => GlobalCubit());
  di.registerFactory(() => CacheHelper());
}
