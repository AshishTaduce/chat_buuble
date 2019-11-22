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
    expect(JumpingCurve(0.25,0.75).transformInternal(0.0), 0.0);
    expect(JumpingCurve(0.25,0.75).transformInternal(0.375), 0.5);
    expect(JumpingCurve(0.25,0.75).transformInternal(0.5), 1.0);
    expect(JumpingCurve(0.25,0.75).transformInternal(0.75), 0);
    expect(JumpingCurve(0.25,0.75).transformInternal(0.9), 0);
    expect(JumpingCurve(0.25,0.75).transformInternal(0.625), 0.5);

    expect(JumpingCurve(0.0,0.5).transformInternal(0.0), 0.0);
    expect(JumpingCurve(0.0,0.5).transformInternal(0.125), 0.5);
    expect(JumpingCurve(0.0,0.5).transformInternal(0.25), 1.0);
    expect(JumpingCurve(0.0,0.5).transformInternal(0.5), 0);
    expect(JumpingCurve(0.0,0.5).transformInternal(0.7), 0);
    expect(JumpingCurve(0.0,0.5).transformInternal(0.375), 0.5);

    expect(JumpingCurve(0.125,0.625).transformInternal(0.125), 0.0);
    expect(JumpingCurve(0.125,0.625).transformInternal(0.5), 0.5);
    expect(JumpingCurve(0.125,0.625).transformInternal(0.625), 0.0);
    expect(JumpingCurve(0.125,0.625).transformInternal(0.7), 0);
    expect(JumpingCurve(0.125,0.625).transformInternal(1.0), 0);
    expect(JumpingCurve(0.125,0.625).transformInternal(0.75), 0.0);
  });
}
