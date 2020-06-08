import 'package:flutter/material.dart';

import 'contact.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments;
    final contact = contacts.firstWhere((contact) => contact.id == id);
    return Scaffold(
      appBar: AppBar(
        title: Text('${contact.name}, ${contact.address}'),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text('xjhgxhj'), value: '1'),
              PopupMenuItem(child: Text('dsfgdhg'), value: '2'),
            ],
            icon: Icon(Icons.more_vert),
            onSelected: (String selectedValue) {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading: IconButton(icon: Icon(Icons.call), onPressed: () {}),
            title: Text(contact.number),
            trailing: IconButton(icon: Icon(Icons.message), onPressed: () {}),
            onTap: () {},
          ),
          Divider(),
          Text('Work'),
          Row(
            children: <Widget>[
              Icon(Icons.label_outline),
              Chip(
                label: Text(contact.work),
                padding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ],
          ),
          Divider(),
          Text('Account'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        onPressed: () {
          Navigator.of(context).pushNamed('/add_contact');
        },
      ),
    );
  }
}
