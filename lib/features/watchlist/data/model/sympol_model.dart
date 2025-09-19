import '../../domain/entities/symbol.dart';

class SymbolModel extends Symbol {
  const SymbolModel({
    required super.symbol,
    required super.name,
    required super.price,
    required super.change,
    required super.changePercent,
  });

  factory SymbolModel.fromJson(Map<String, dynamic> json) {
    return SymbolModel(
      symbol: json['symbol'],
      name: json['name'], 
      price: json['price'].toDouble(), 
      change: json['change'].toDouble(),
      changePercent: json['changePercent'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'symbol': symbol,
      'name': name,
      'price': price,
      'change': change,
      'changePercent': changePercent,
    };
  }
}