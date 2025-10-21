// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:nano_banana/main.dart';

void main() {
  testWidgets('App starts and shows home screen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const SusamAI());

    // Verify that app title is shown
    expect(find.text('SUSAM AI'), findsOneWidget);
    expect(find.text('AI IMAGE & EDITOR'), findsOneWidget);

    // Verify bottom navigation is shown
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Chat'), findsOneWidget);
    expect(find.text('History'), findsOneWidget);
  });
}
