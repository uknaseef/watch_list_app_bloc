import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ioring_test/features/watchlist/presentaion/bloc/watchlist_bloc.dart';
import '../bloc/watchlist_event.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('something went wrong'),
          ElevatedButton(
            onPressed: () {
              context.read<WatchlistBloc>().add(LoadWatchlists());
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
