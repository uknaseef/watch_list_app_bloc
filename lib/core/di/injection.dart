import 'package:get_it/get_it.dart';
import '../../features/watchlist/data/datasource/watchlist_localdata_source.dart';
import '../../features/watchlist/data/repositories/watchlist_repository_impl.dart';
import '../../features/watchlist/domain/repositories/watchlist_repository.dart';
import '../../features/watchlist/domain/usecases/get_watchlists.dart';
import '../../features/watchlist/presentaion/bloc/watchlist_bloc.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerFactory(() => WatchlistBloc(getWatchlists: getIt()));
  getIt.registerLazySingleton(() => GetWatchlists(getIt()));
  getIt.registerLazySingleton<WatchlistRepository>(
    () => WatchlistRepositoryImpl(localDatasource: getIt()),
  );
  getIt.registerLazySingleton<WatchlistLocalDatasource>(
    () => WatchlistLocalDatasourceImpl(),
  );
}
