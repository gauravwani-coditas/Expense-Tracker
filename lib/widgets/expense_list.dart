
import 'package:expense_tracker/widgets/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpenseList extends StatelessWidget{

  const ExpenseList(this._expenseList,{super.key});
  
  final List<Expense> _expenseList;
  
  @override
  Widget build(BuildContext context) {

    return ListView.builder(itemCount: _expenseList.length,  itemBuilder: (cxt,index)=> ExpenseItem(_expenseList[index]));
    
  }
}