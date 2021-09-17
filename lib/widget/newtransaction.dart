import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
              //    onChanged: (val)=> titleInput=val,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Betrag"),
              controller: amountController,
              //   onChanged: (val)=> amountInput=val,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Add",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
