import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/app_colors.dart';
import '../bloc/watchlist_bloc.dart';
import '../bloc/watchlist_event.dart';
import '../bloc/watchlist_state.dart';
import '../widgets/error_view.dart';
import '../widgets/no_data_view.dart';
import '../widgets/search_widget.dart';
import '../widgets/symbol_list_item.dart';
import '../widgets/watchlist_tab_widget.dart';

class WatchlistPage extends StatelessWidget {
  const WatchlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WatchlistBloc, WatchlistState>(
        builder: (context, state) {
          if (state is WatchlistLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is WatchlistError) {
            return ErrorView();
          } else if (state is WatchlistLoaded) {
            return RefreshIndicator(
              onRefresh: () {
                context.read<WatchlistBloc>().add(LoadWatchlists());
                return Future.value();
              },
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    title: const Text('Watchlist'),
                    pinned: true,
                    floating: false,
                    centerTitle: false,
                    snap: false,
                    elevation: 0,
                    backgroundColor: AppColors.background,
                    surfaceTintColor: AppColors.background,
                    actions: [
                      Transform.rotate(
                        angle: 0.5,
                        child: IconButton(
                          icon: Icon(
                            Icons.push_pin_outlined,
                            color: AppColors.grey.withValues(alpha: 0.7),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: _SliverHeaderDelegate(
                      child: WatchlistTabsWidget(
                        watchlists: state.watchlists,
                        selectedIndex: state.selectedIndex,
                        onTabSelected: (index) {
                          context.read<WatchlistBloc>().add(
                            SelectWatchlist(index),
                          );
                        },
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(child: SearchWidget()),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final symbol =
                            state.watchlists[state.selectedIndex].symbols[index];
                        return SymbolListItem(symbol: symbol);
                      },
                      childCount:
                          state.watchlists[state.selectedIndex].symbols.length,
                    ),
                  ),
                ],
              ),
            );
          }
          return NoDataView();
        },
      ),
    );
  }
}

class _SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double height;

  _SliverHeaderDelegate({required this.child, this.height = 50.0});

  @override
  double get minExtent => height;

  @override
  double get maxExtent => height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return child;
  }

  @override
  bool shouldRebuild(covariant _SliverHeaderDelegate oldDelegate) {
    return oldDelegate.child != child || oldDelegate.height != height;
  }
}
