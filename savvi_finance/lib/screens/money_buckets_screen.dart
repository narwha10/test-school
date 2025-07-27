import 'package:flutter/material.dart';
import 'package:savvi_finance/screens/create_money_bucket_screen.dart';

class MoneyBucketsScreen extends StatelessWidget {
  const MoneyBucketsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Money Buckets'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CreateMoneyBucketScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: const [
          // Placeholder for money bucket list items
          ListTile(
            title: Text('Wallet'),
            trailing: Text('\$100.00'),
          ),
          ListTile(
            title: Text('BCA'),
            trailing: Text('\$500.00'),
          ),
          ListTile(
            title: Text('ShopeePay'),
            trailing: Text('\$50.00'),
          ),
        ],
      ),
    );
  }
}
