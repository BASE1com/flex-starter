import 'package:flex_starter/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Tab navigation smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(StarterApp());
    await tester.pumpAndSettle();

    expect(find.text('Home Page'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.search));
    await tester.pumpAndSettle();

    // Verify that our counter has incremented.
    expect(find.text('Category List'), findsOneWidget);
  });
}
