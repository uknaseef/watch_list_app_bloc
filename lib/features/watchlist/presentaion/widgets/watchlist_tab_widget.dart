import 'package:flutter/material.dart';
import 'package:ioring_test/core/constants/app_colors.dart';

class WatchlistTabsWidget extends StatelessWidget {
  final List<dynamic> watchlists;
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  const WatchlistTabsWidget({
    super.key,
    required this.watchlists,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.background,
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        itemCount: watchlists.length,
        itemBuilder: (context, index) {
          final isSelected = index == selectedIndex;
          return GestureDetector(
            onTap: () => onTabSelected(index),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Center(
                    child: Text(
                      watchlists[index].name,
                      style: TextStyle(
                        color: isSelected
                            ? AppColors.primary
                            : AppColors.darkGrey,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 2,
                  width: 80,
                  color: isSelected ? AppColors.primary : Colors.transparent,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
