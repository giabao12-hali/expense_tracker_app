import 'package:expense_tracker_app/models/expense_model.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final ExpenseModel expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                //* fix chuỗi string còn 2 chữ số thập phân (12.3433 => 12.34)
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.categories]),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(expense.formattedDate),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
