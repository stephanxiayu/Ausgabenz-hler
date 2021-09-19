import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submittData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0 ?? true) {
    } else
      widget.addTx(titleController.text, double.parse(amountController.text));
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            decoration: InputDecoration(labelText: "Title"),
            controller: titleController,
            onSubmitted: (_) => submittData(),
            //    onChanged: (val)=> titleInput=val,
          ),
          TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Betrag"),
              controller: amountController,
              onSubmitted: (_) => submittData()
              //   onChanged: (val)=> amountInput=val,
              ),
          TextButton(
              onPressed: submittData,
              child: Text(
                "Add",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
