import 'package:expense_tracker/widgets/expense_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense>_expenseList = [
    Expense("Rajbhog Kachori", 120, DateTime.now(), Category.food),
    Expense("Sinhagad", 220, DateTime.now(), Category.travel),
    Expense("Earphones", 450, DateTime.now(), Category.work),
  ];

  void _openAddExpenseOverlay(){
    showModalBottomSheet(context: context, builder: (cxt)=>Text("Modal Bottom Sheet"),);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title:const Text("Flutter ExpenseTracker"), actions: [IconButton(onPressed: _openAddExpenseOverlay, icon: const Icon(Icons.add))],),
      body: Column(
      children: [
        const Text("The Chart"),
        Expanded(child: ExpenseList(_expenseList)) ,
      ],
           )
    );
  }
}


