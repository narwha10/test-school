import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:savvi_finance/screens/transaction_screen.dart';

void main() {
  testWidgets('TransactionScreen has a title and form fields',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: TransactionScreen()));

    // Verify that our screen has a title.
    expect(find.text('Add Transaction'), findsOneWidget);

    // Verify that our screen has form fields.
    expect(find.byType(TextFormField), findsNWidgets(2));
    expect(find.byType(DropdownButtonFormField), findsNWidgets(2));
  });
}
