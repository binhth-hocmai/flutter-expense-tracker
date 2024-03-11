import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker/models/expense.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    // Icon getIconByCategory(Category category) {
    //   switch (category) {
    //     case Category.food:
    //       return const Icon(Icons.lunch_dining);
    //     case Category.travel:
    //       return const Icon(Icons.flight_takeoff);
    //     case Category.leisure:
    //       return const Icon(Icons.movie);
    //     case Category.work:
    //       return const Icon(Icons.work);
    //     default:
    //       return const Icon(Icons.lunch_dining);
    //   }
    // }

    return Card(
      child: Container(
        // color: const Color.fromARGB(255, 251, 218, 255),
        decoration: const BoxDecoration(
          // color: Color.fromARGB(255, 251, 218, 255),
          borderRadius: BorderRadius.all(Radius.zero),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                expense.title,
                // style: const TextStyle(
                //   fontWeight: FontWeight.bold,
                //   fontSize: 15,
                // ),
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 4),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '\$${expense.amount.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(width: 8),
                    Text(
                      expense.getFormattedDate,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ]),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
