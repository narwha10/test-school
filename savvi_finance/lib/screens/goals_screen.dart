import 'package:flutter/material.dart';
import 'package:savvi_finance/screens/create_goal_screen.dart';

class GoalsScreen extends StatelessWidget {
  const GoalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Financial Goals'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CreateGoalScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: const [
          // Placeholder for goal list items
          ListTile(
            title: Text('Buy a new laptop'),
            subtitle: LinearProgressIndicator(value: 0.5),
            trailing: Text('\$500 / \$1000'),
          ),
          ListTile(
            title: Text('Emergency Fund'),
            subtitle: LinearProgressIndicator(value: 0.2),
            trailing: Text('\$200 / \$1000'),
          ),
        ],
      ),
    );
  }
}
