import 'package:flutter/material.dart';
import 'package:ioring_test/core/constants/app_colors.dart';

import '../pages/search_page.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      margin: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 5,
      ).copyWith(top: 15),
      height: 40,
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.1),
            spreadRadius: 0.5,
            blurRadius: 0.5,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search, color: AppColors.grey.withValues(alpha: 0.5)),
          SizedBox(width: 8),
          Expanded(
            child: TextField(
              readOnly: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchPage()),
                );
              },
              decoration: InputDecoration(
                hintText: 'Search And Add Scripts',
                hintStyle: TextStyle(
                  color: AppColors.grey.withValues(alpha: 0.5),
                  fontSize: 14,
                ),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(width: 8),
          VerticalDivider(color: AppColors.grey.withValues(alpha: 0.5)),
          Icon(Icons.apps_sharp, color: AppColors.primary),
          SizedBox(width: 10),
          Icon(Icons.tune_rounded, color: AppColors.primary),
        ],
      ),
    );
  }
}
