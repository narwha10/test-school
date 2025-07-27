import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:savvi_finance/screens/create_goal_screen.dart';

void main() {
  testWidgets('CreateGoalScreen has a title and form fields',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: CreateGoalScreen()));

    // Verify that our screen has a title.
    expect(find.text('Create Goal'), findsOneWidget);

    // Verify that our screen has form fields.
    expect(find.byType(TextFormField), findsNWidgets(2));
  });
}
