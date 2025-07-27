import 'package:flutter/material.dart';
import 'package:savvi_finance/screens/create_owed_screen.dart';

class OwedScreen extends StatelessWidget {
  const OwedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Debt Management'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'What we owe'),
              Tab(text: 'What others owe us'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Placeholder for debts list
            ListView(
              children: const [
                ListTile(
                  title: Text('John Doe'),
                  subtitle: Text('Due: 2024-12-31'),
                  trailing: Text('\$50.00'),
                ),
              ],
            ),
            // Placeholder for receivables list
            ListView(
              children: const [
                ListTile(
                  title: Text('Jane Smith'),
                  subtitle: Text('Due: 2024-11-30'),
                  trailing: Text('\$100.00'),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const CreateOwedScreen(),
              ),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
