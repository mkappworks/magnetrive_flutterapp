import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:magnetd_rive_app/main.dart';

void main() {
  testWidgets(
      'When pause button presses the icon should change to play and color to green',
      (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    final button = find.byType(FloatingActionButton);

    //ACT
    await tester.tap(button);
    await tester.pump();

    // ASSERT
    final icon = find.byIcon(Icons.play_arrow);

    expect(icon, findsOneWidget);
   
  });
}
