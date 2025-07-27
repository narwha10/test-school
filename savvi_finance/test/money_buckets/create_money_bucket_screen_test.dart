import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:savvi_finance/screens/create_money_bucket_screen.dart';

void main() {
  testWidgets('CreateMoneyBucketScreen has a title and form fields',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: CreateMoneyBucketScreen()));

    // Verify that our screen has a title.
    expect(find.text('Create Money Bucket'), findsOneWidget);

    // Verify that our screen has form fields.
    expect(find.byType(TextFormField), findsNWidgets(2));
  });
}
