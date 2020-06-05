import 'package:flutter/material.dart';

class AddDailyTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Daily Transaction'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.check), onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            RaisedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.arrow_drop_down),
              label: Text('Date'),
            ),
            DropdownButton(
              items: [
                DropdownMenuItem(
                  child: Text('Credit'),
                ),
                DropdownMenuItem(
                  child: Text('Debit'),
                ),
              ],
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
