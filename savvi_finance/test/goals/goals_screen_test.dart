import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:savvi_finance/screens/goals_screen.dart';

void main() {
  testWidgets('GoalsScreen has a title and a list of goals',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: GoalsScreen()));

    // Verify that our screen has a title.
    expect(find.text('Financial Goals'), findsOneWidget);

    // Verify that our screen has a list of goals.
    expect(find.byType(ListView), findsOneWidget);
  });
}
