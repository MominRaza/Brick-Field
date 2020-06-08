import 'package:flutter/material.dart';

import './contact_screen.dart';
import './contacts_screen.dart';
import './home_screen.dart';
import './add_contact_screen.dart';
import './add_daily_transaction_screen.dart';
import './daily_transaction_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brick Field',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      routes: {
        '/contacts': (context) => ContactsScreen(),
        '/contact': (context) => ContactScreen(),
        '/add_contact': (context) => AddContactScreen(),
        '/add_daily_transaction': (context) => AddDailyTransactionScreen(),
        '/daily_transaction': (context) => DailyTransactionScreen(),
      },
    );
  }
}
