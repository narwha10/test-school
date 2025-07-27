import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:savvi_finance/screens/owed_screen.dart';

void main() {
  testWidgets('OwedScreen has a title and a tab bar',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: OwedScreen()));

    // Verify that our screen has a title.
    expect(find.text('Debt Management'), findsOneWidget);

    // Verify that our screen has a tab bar.
    expect(find.byType(TabBar), findsOneWidget);
  });
}
