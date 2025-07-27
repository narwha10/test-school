import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:savvi_finance/screens/auth/forgot_password_screen.dart';

void main() {
  testWidgets('ForgotPasswordScreen has a title, email field, and a button',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: ForgotPasswordScreen()));

    // Verify that our screen has a title.
    expect(find.text('Forgot Password'), findsOneWidget);

    // Verify that our screen has an email field.
    expect(find.byType(TextFormField), findsOneWidget);

    // Verify that our screen has a button.
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}
