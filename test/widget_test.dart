import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_firebase/main.dart';

void main() {
  testWidgets('Firebase status screen smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify key titles and flame icon render.
    expect(find.text('¡Firebase Conectado!'), findsOneWidget);
    expect(find.byIcon(Icons.local_fire_department_rounded), findsOneWidget);
  });
}
