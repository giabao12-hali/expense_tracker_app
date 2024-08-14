import 'package:expense_tracker_app/models/expense_model.dart';
import 'package:flutter/material.dart';

class Expense extends StatefulWidget {
  const Expense({super.key});

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  final List<ExpenseModel> _registeredExpenses = [
    ExpenseModel(
      title: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
      categories: Category.work,
    ),
    ExpenseModel(
      title: 'Cinema',
      amount: 19.99,
      date: DateTime.now(),
      categories: Category.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text('The chart'),
          Text('Expense list...'),
        ],
      ),
    );
  }
}
