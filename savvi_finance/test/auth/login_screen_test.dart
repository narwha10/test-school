import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:savvi_finance/screens/auth/login_screen.dart';

void main() {
  testWidgets('LoginScreen has a title, email and password fields, and a login button',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: LoginScreen()));

    // Verify that our screen has a title.
    expect(find.text('Login'), findsOneWidget);

    // Verify that our screen has email and password fields.
    expect(find.byType(TextFormField), findsNWidgets(2));

    // Verify that our screen has a login button.
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}
