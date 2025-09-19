import 'package:equatable/equatable.dart';
import 'symbol.dart';

class Watchlist extends Equatable {
  final String id;
  final String name;
  final List<Symbol> symbols;

  const Watchlist({
    required this.id,
    required this.name,
    required this.symbols,
  });

  @override
  List<Object> get props => [id, name, symbols];
}