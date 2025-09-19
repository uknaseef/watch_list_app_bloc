import '../../domain/entities/watchlist.dart';
import 'sympol_model.dart';

class WatchlistModel extends Watchlist {
  const WatchlistModel({
    required super.id,
    required super.name,
    required super.symbols,
  });

  factory WatchlistModel.fromJson(Map<String, dynamic> json) {
    return WatchlistModel(
      id: json['id'],
      name: json['name'],
      symbols: (json['symbols'] as List)
          .map((symbolJson) => SymbolModel.fromJson(symbolJson))
          .toList(),
    );
  }
}