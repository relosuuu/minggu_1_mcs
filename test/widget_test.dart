import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:minggu_1_mcs/main.dart';

void main() {
  testWidgets('App loads and counter increments', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify app bar title
    expect(find.text('MCS BAB 1'), findsOneWidget);

    // Verify start counter starts at 0 and result starts at 0
    expect(find.text('0'), findsNWidgets(2));

    // Tap the forward (increment) button
    await tester.tap(find.byIcon(Icons.arrow_forward_ios));
    await tester.pump();

    // Verify counter incremented to 1
    expect(find.text('1'), findsOneWidget);
  });
}
