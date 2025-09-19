import 'package:equatable/equatable.dart';
import '../../domain/entities/watchlist.dart';

abstract class WatchlistState extends Equatable {
  const WatchlistState();

  @override
  List<Object> get props => [];
}

class WatchlistInitial extends WatchlistState {}

class WatchlistLoading extends WatchlistState {}

class WatchlistLoaded extends WatchlistState {
  final List<Watchlist> watchlists;
  final int selectedIndex;

  const WatchlistLoaded({
    required this.watchlists,
    this.selectedIndex = 0,
  });

  @override
  List<Object> get props => [watchlists, selectedIndex];

  WatchlistLoaded copyWith({
    List<Watchlist>? watchlists,
    int? selectedIndex,
  }) {
    return WatchlistLoaded(
      watchlists: watchlists ?? this.watchlists,
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }
}

class WatchlistError extends WatchlistState {
  final String message;

  const WatchlistError({required this.message});

  @override
  List<Object> get props => [message];
}