import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:savvi_finance/services/auth_service.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockUserCredential extends Mock implements UserCredential {}

void main() {
  group('AuthService', () {
    late AuthService authService;
    late MockFirebaseAuth mockFirebaseAuth;

    setUp(() {
      mockFirebaseAuth = MockFirebaseAuth();
      authService = AuthService();
    });

    test('registerWithEmailAndPassword returns User on success', () async {
      final mockUserCredential = MockUserCredential();
      when(mockFirebaseAuth.createUserWithEmailAndPassword(
        email: 'test@test.com',
        password: 'password',
      )).thenAnswer((_) async => mockUserCredential);

      final user = await authService.registerWithEmailAndPassword(
        'test@test.com',
        'password',
      );

      expect(user, isA<User>());
    });

    test('signInWithEmailAndPassword returns User on success', () async {
      final mockUserCredential = MockUserCredential();
      when(mockFirebaseAuth.signInWithEmailAndPassword(
        email: 'test@test.com',
        password: 'password',
      )).thenAnswer((_) async => mockUserCredential);

      final user = await authService.signInWithEmailAndPassword(
        'test@test.com',
        'password',
      );

      expect(user, isA<User>());
    });

    test('signOut completes successfully', () async {
      when(mockFirebaseAuth.signOut()).thenAnswer((_) async => null);
      await authService.signOut();
      verify(mockFirebaseAuth.signOut());
    });

    test('sendPasswordResetEmail completes successfully', () async {
      when(mockFirebaseAuth.sendPasswordResetEmail(email: 'test@test.com'))
          .thenAnswer((_) async => null);
      await authService.sendPasswordResetEmail('test@test.com');
      verify(mockFirebaseAuth.sendPasswordResetEmail(email: 'test@test.com'));
    });
  });
}
