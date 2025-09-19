import 'package:dartz/dartz.dart';
import '../entities/watchlist.dart';

abstract class WatchlistRepository {
  Future<Either<String, List<Watchlist>>> getWatchlists();
}