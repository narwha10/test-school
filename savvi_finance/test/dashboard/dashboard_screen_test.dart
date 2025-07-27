import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:savvi_finance/screens/dashboard_screen.dart';

void main() {
  testWidgets('DashboardScreen has a title, balance, goal progress, and a chart',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: DashboardScreen()));

    // Verify that our screen has a title.
    expect(find.text('Dashboard'), findsOneWidget);

    // Verify that our screen has a total balance.
    expect(find.text('Total Balance'), findsOneWidget);

    // Verify that our screen has a financial goal progress.
    expect(find.text('Financial Goal Progress'), findsOneWidget);

    // Verify that our screen has a monthly summary.
    expect(find.text('Monthly Summary'), findsOneWidget);
  });
}
