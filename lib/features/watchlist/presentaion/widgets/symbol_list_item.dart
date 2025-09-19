import 'package:flutter/material.dart';
import 'package:ioring_test/core/constants/app_colors.dart';
import '../../domain/entities/symbol.dart';

class SymbolListItem extends StatelessWidget {
  final Symbol symbol;
  const SymbolListItem({super.key, required this.symbol});

  @override
  Widget build(BuildContext context) {
    final isPositive = symbol.change >= 0;
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),

        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        symbol.symbol,
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        symbol.name,
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            isPositive
                                ? Icons.arrow_drop_up
                                : Icons.arrow_drop_down,
                            size: 30,
                            color: isPositive
                                ? AppColors.primary
                                : AppColors.red,
                          ),
                          Text(
                            '₹${symbol.price.toStringAsFixed(2)}',
                            style: TextStyle(
                              color: isPositive
                                  ? AppColors.primary
                                  : AppColors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '${isPositive ? '+' : ''}${symbol.change.toStringAsFixed(2)} (${symbol.changePercent.toStringAsFixed(2)}%)',
                        style: TextStyle(color: AppColors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Divider(color: Colors.grey.shade300, height: 0),
          ],
        ),
      ),
    );
  }
}
