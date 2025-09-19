import '../model/sympol_model.dart';
import '../model/watchlist_model.dart';


abstract class WatchlistLocalDatasource {
  Future<List<WatchlistModel>> getWatchlists();
}

class WatchlistLocalDatasourceImpl implements WatchlistLocalDatasource {
  @override
  Future<List<WatchlistModel>> getWatchlists() async {

    await Future.delayed(const Duration(milliseconds: 500));
    
    return [
      const WatchlistModel(
        id: '1',
        name: 'Watchlist 1',
        symbols: [
          SymbolModel(
            symbol: 'NATIONALUM',
            name: 'NSE',
            price: 150.25,
            change: 2.50,
            changePercent: 1.69,
          ),
          SymbolModel(
            symbol: 'WIPRO',
            name: 'NSE',
            price: 2750.80,
            change: -15.20,
            changePercent: -0.55,
          ),
          SymbolModel(
            symbol: 'UPL',
            name: 'NSE',
            price: 800.15,
            change: 12.35,
            changePercent: 1.57,
          ),
          SymbolModel(
            symbol: 'ULTRACEMCO',
            name: 'NSE',
            price: 730.15,
            change: -11.35,
            changePercent: 0.57,
          ),
          SymbolModel(
            symbol: 'UPL',
            name: 'NSE',
            price: 800.15,
            change: 12.35,
            changePercent: 1.57,
          ),
          SymbolModel(
            symbol: 'TITAN',
            name: 'NSE',
            price: 3800.15,
            change: 22.35,
            changePercent: 1.37,
          ),
          SymbolModel(
            symbol: 'TECHM',
            name: 'NSE',
            price: 870.15,
            change: -1.35,
            changePercent: 0.7,
          ),
          SymbolModel(
            symbol: 'TCS',
            name: 'NSE',
            price: 850.15,
            change: 11.35,
            changePercent: 1.57,
          ),
        ],
      ),
      const WatchlistModel(
        id: '2',
        name: 'Watchlist 🤖',
        symbols: [
          SymbolModel(
            symbol: 'MSFT',
            name: 'Microsoft Corporation',
            price: 305.50,
            change: 5.25,
            changePercent: 1.75,
          ),
          SymbolModel(
            symbol: 'AMZN',
            name: 'Amazon.com Inc.',
            price: 3200.75,
            change: -8.90,
            changePercent: -0.28,
          ),
          SymbolModel(
            symbol: 'META',
            name: 'Meta Platforms Inc.',
            price: 320.40,
            change: 7.80,
            changePercent: 2.49,
          ),
        ],
      ),
      const WatchlistModel(
        id: '3',
        name: 'Watchlist 3',
        symbols: [
          SymbolModel(
            symbol: 'JPM',
            name: 'JPMorgan Chase & Co.',
            price: 145.60,
            change: 1.20,
            changePercent: 0.83,
          ),
          SymbolModel(
            symbol: 'BAC',
            name: 'Bank of America Corp.',
            price: 42.85,
            change: -0.35,
            changePercent: -0.81,
          ),
        ],
      ),
      const WatchlistModel(
        id: '4',
        name: 'NIFTY',
        symbols: [
          SymbolModel(
            symbol: 'JPM',
            name: 'JPMorgan Chase & Co.',
            price: 145.60,
            change: 1.20,
            changePercent: 0.83,
          ),
          SymbolModel(
            symbol: 'BAC',
            name: 'Bank of America Corp.',
            price: 42.85,
            change: -0.35,
            changePercent: -0.81,
          ),
        ],
      ),
    ];
  }
}