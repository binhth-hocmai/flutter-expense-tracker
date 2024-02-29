import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker/models/expense.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {

    Icon getIconByCategory(Category category) {
      switch (category) {
        case Category.food:
          return const Icon(Icons.food_bank);
        case Category.travel:
          return const Icon(Icons.travel_explore);
        case Category.leisure:
          return const Icon(Icons.local_activity);
        case Category.work:
          return const Icon(Icons.work);
        default:
          return const Icon(Icons.food_bank);
      }
    }
    
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(height: 4),
            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    const Icon(Icons.alarm),
                    const SizedBox(width: 8),
                    Text(expense.date.toString()),
                  ]
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
