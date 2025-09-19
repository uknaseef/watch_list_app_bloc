import 'package:flutter/material.dart';
import '../pages/search_page.dart';

class NoDataView extends StatelessWidget {
  const NoDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
            slivers: [
              SliverAppBar(
                title: const Text('Watchlist'),
                pinned: true,
                actions: [
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SearchPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SliverFillRemaining(
                child: Center(
                  child: Text('No data available'),
                ),
              ),
            ],
          );
  }
}