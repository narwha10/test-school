import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:savvi_finance/screens/auth/register_screen.dart';

void main() {
  testWidgets('RegisterScreen has a title, name, email and password fields, and a register button',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: RegisterScreen()));

    // Verify that our screen has a title.
    expect(find.text('Register'), findsOneWidget);

    // Verify that our screen has name, email and password fields.
    expect(find.byType(TextFormField), findsNWidgets(3));

    // Verify that our screen has a register button.
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}
