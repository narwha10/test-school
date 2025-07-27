import 'package:flutter/material.dart';

class CreateOwedScreen extends StatefulWidget {
  const CreateOwedScreen({Key? key}) : super(key: key);

  @override
  State<CreateOwedScreen> createState() => _CreateOwedScreenState();
}

class _CreateOwedScreenState extends State<CreateOwedScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime _dueDate = DateTime.now();
  String _type = 'debt';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Debt/Receivable'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              DropdownButtonFormField<String>(
                value: _type,
                onChanged: (value) {
                  setState(() {
                    _type = value!;
                  });
                },
                items: const [
                  DropdownMenuItem(
                    value: 'debt',
                    child: Text('I Owe'),
                  ),
                  DropdownMenuItem(
                    value: 'receivable',
                    child: Text('Owes Me'),
                  ),
                ],
              ),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Person\'s Name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Amount',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an amount';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Text('Due Date: ${_dueDate.toLocal()}'.split(' ')[0]),
                  ),
                  TextButton(
                    onPressed: () async {
                      final DateTime? picked = await showDatePicker(
                        context: context,
                        initialDate: _dueDate,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101),
                      );
                      if (picked != null && picked != _dueDate) {
                        setState(() {
                          _dueDate = picked;
                        });
                      }
                    },
                    child: const Text('Select Date'),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // TODO: Implement debt/receivable creation logic
                  }
                },
                child: const Text('Add Entry'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
