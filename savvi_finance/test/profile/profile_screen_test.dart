import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:savvi_finance/screens/profile_screen.dart';

void main() {
  testWidgets('ProfileScreen has a title and a list of options',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: ProfileScreen()));

    // Verify that our screen has a title.
    expect(find.text('Profile & Settings'), findsOneWidget);

    // Verify that our screen has a list of options.
    expect(find.byType(ListView), findsOneWidget);
  });
}
