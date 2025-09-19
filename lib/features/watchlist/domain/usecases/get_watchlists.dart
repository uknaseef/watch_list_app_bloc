import 'package:dartz/dartz.dart';
import '../entities/watchlist.dart';
import '../repositories/watchlist_repository.dart';

class GetWatchlists {
  final WatchlistRepository repository;

  GetWatchlists(this.repository);

  Future<Either<String, List<Watchlist>>> call() async {
    return await repository.getWatchlists();
  }
}