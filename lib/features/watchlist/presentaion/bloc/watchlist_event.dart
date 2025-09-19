import 'package:equatable/equatable.dart';

abstract class WatchlistEvent extends Equatable {
  const WatchlistEvent();

  @override
  List<Object> get props => [];
}

class LoadWatchlists extends WatchlistEvent {}

class SelectWatchlist extends WatchlistEvent {
  final int index;

  const SelectWatchlist(this.index);

  @override
  List<Object> get props => [index];
}