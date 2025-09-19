import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_watchlists.dart';
import 'watchlist_event.dart';
import 'watchlist_state.dart';

class WatchlistBloc extends Bloc<WatchlistEvent, WatchlistState> {
  final GetWatchlists getWatchlists;

  WatchlistBloc({required this.getWatchlists}) : super(WatchlistInitial()) {
    on<LoadWatchlists>(_onLoadWatchlists);
    on<SelectWatchlist>(_onSelectWatchlist);
  }

  void _onLoadWatchlists(
    LoadWatchlists event,
    Emitter<WatchlistState> emit,
  ) async {
    emit(WatchlistLoading());
    
    final result = await getWatchlists();
    
    result.fold(
      (error) => emit(WatchlistError(message: error)),
      (watchlists) => emit(WatchlistLoaded(watchlists: watchlists)),
    );
  }

  void _onSelectWatchlist(
    SelectWatchlist event,
    Emitter<WatchlistState> emit,
  ) {
    if (state is WatchlistLoaded) {
      final currentState = state as WatchlistLoaded;
      emit(currentState.copyWith(selectedIndex: event.index));
    }
  }
}