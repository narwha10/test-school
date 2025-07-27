import 'package:flutter/material.dart';

class CreateMoneyBucketScreen extends StatefulWidget {
  const CreateMoneyBucketScreen({Key? key}) : super(key: key);

  @override
  State<CreateMoneyBucketScreen> createState() =>
      _CreateMoneyBucketScreenState();
}

class _CreateMoneyBucketScreenState extends State<CreateMoneyBucketScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _initialBalanceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Money Bucket'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Bucket Name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _initialBalanceController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Initial Balance',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an initial balance';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // TODO: Implement money bucket creation logic
                  }
                },
                child: const Text('Create Bucket'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
