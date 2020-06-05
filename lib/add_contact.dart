import 'package:flutter/material.dart';

class AddContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Contact'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.check), onPressed: () {})
          ],
        ),
        body: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
              keyboardType: TextInputType.text,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Address'),
              keyboardType: TextInputType.text,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Work'),
              keyboardType: TextInputType.text,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Number'),
              keyboardType: TextInputType.phone,
            ),
          ],
        ));
  }
}
