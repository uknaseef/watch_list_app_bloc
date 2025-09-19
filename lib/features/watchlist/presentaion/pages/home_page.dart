import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ioring_test/core/constants/app_colors.dart';
import '../bloc/watchlist_bloc.dart';
import '../bloc/watchlist_event.dart';
import 'watchlist_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ValueNotifier<int> _selectedIndexNotifier = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
    context.read<WatchlistBloc>().add(LoadWatchlists());
  }

  void _onItemTapped(int index) {
    _selectedIndexNotifier.value = index;
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const WatchlistPage(),
      const Center(child: Text('Orders', style: TextStyle(fontSize: 24))),
      const Center(child: Text('Portfolio', style: TextStyle(fontSize: 24))),
      const Center(child: Text('Movers', style: TextStyle(fontSize: 24))),
      const Center(child: Text('IOU007', style: TextStyle(fontSize: 24))),
    ];

    return ValueListenableBuilder(
      valueListenable: _selectedIndexNotifier,
      builder: (context, index, child) {
        return Scaffold(
          body: pages[index],
          bottomNavigationBar: BottomNavigationBar(
            elevation: 10,
            backgroundColor: AppColors.secondary,
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: 'Watchlist',
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined),
                label: 'Orders',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.pie_chart_outline),
                label: 'Portfolio',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_outlined),
                label: 'Movers',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_vert_outlined),
                label: 'IOU007',
              ),
            ],
            currentIndex: index,
            selectedItemColor: AppColors.primary,
            onTap: _onItemTapped,
          ),
        );
      },
    );
  }
}
