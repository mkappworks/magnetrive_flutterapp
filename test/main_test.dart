import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:magnetd_rive_app/main.dart';

void main() {
  testWidgets('When pause button presses the icon should change to play and color to green', (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    expect(find.byIcon(Icons.pause), findsOneWidget);
    expect(find.byIcon(Icons.play_arrow), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.pause));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.byIcon(Icons.play_arrow), findsOneWidget);
    expect(find.byIcon(Icons.pause), findsNothing);
  });
}
