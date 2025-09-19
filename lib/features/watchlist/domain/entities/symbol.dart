import 'package:equatable/equatable.dart';

class Symbol extends Equatable {
  final String symbol;
  final String name;
  final double price;
  final double change;
  final double changePercent;

  const Symbol({
    required this.symbol,
    required this.name,
    required this.price,
    required this.change,
    required this.changePercent,
  });

  @override
  List<Object> get props => [symbol, name, price, change, changePercent];
}