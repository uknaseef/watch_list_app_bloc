import 'package:dartz/dartz.dart';
import '../../domain/entities/watchlist.dart';
import '../../domain/repositories/watchlist_repository.dart';
import '../datasource/watchlist_localdata_source.dart';

class WatchlistRepositoryImpl implements WatchlistRepository {
  final WatchlistLocalDatasource localDatasource;

  WatchlistRepositoryImpl({required this.localDatasource});

  @override
  Future<Either<String, List<Watchlist>>> getWatchlists() async {
    try {
      final watchlists = await localDatasource.getWatchlists();
      return Right(watchlists);
    } catch (e) {
      return Left('Failed to load WatchList: ${e.toString()}');
    }
  }
}