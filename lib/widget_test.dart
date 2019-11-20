// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:chat_buuble/main.dart';

void main() {
  test('Counter increments smoke test',(){
    expect(JumpingCurve().transformInternal(0.0), 0.0);
    expect(JumpingCurve().transformInternal(0.1), 0.5);
    expect(JumpingCurve().transformInternal(0.2), 1.0);
    expect(JumpingCurve().transformInternal(0.4), 0);
    expect(JumpingCurve().transformInternal(0.7), 0);
    expect(JumpingCurve().transformInternal(0.3), 0.5);

  });
}
