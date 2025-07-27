import 'package:flutter/material.dart';
import 'package:savvi_finance/screens/money_buckets_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile & Settings'),
      ),
      body: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('John Doe'),
            accountEmail: Text('john.doe@example.com'),
            currentAccountPicture: CircleAvatar(
              child: Text('JD'),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text('Edit Profile'),
            onTap: () {
              // TODO: Navigate to edit profile screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.palette),
            title: const Text('Theme'),
            trailing: Switch(
              value: true, // TODO: Get theme from settings
              onChanged: (value) {
                // TODO: Implement theme change
              },
            ),
          ),
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Language'),
            trailing: const Text('English'), // TODO: Get language from settings
            onTap: () {
              // TODO: Show language selection dialog
            },
          ),
          ListTile(
            leading: const Icon(Icons.attach_money),
            title: const Text('Currency'),
            trailing: const Text('USD'), // TODO: Get currency from settings
            onTap: () {
              // TODO: Show currency selection dialog
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_balance_wallet),
            title: const Text('Money Buckets'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MoneyBucketsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
