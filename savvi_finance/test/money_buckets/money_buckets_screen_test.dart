import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:savvi_finance/screens/money_buckets_screen.dart';

void main() {
  testWidgets('MoneyBucketsScreen has a title and a list of buckets',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: MoneyBucketsScreen()));

    // Verify that our screen has a title.
    expect(find.text('Money Buckets'), findsOneWidget);

    // Verify that our screen has a list of buckets.
    expect(find.byType(ListView), findsOneWidget);
  });
}
