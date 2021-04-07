import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:opacity_button/src/opacity_button.dart';

void main() {
  Widget opacityButton;
  Widget mainWidget;

  setUpAll(() {
    // Initilaze opacityButton.
    opacityButton = OpacityButton(
      child: Text("Tap Here!"),
      opacityValue: .3,
      onTap: () => print("Tapped"),
      onLongPress: () => print("long pressed"),
    );

    // Initilaze mainWidget.
    mainWidget = MaterialApp(
      title: "Opacity Button",
      home: Scaffold(
        body: Center(child: opacityButton),
      ),
    );
  });

  testWidgets('Opacity Button Test', (WidgetTester tester) async {
    await tester.pumpWidget(mainWidget);

    // mainWidget tests.
    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.byType(Center), findsOneWidget);

    // opacityButton tests.
    expect(find.byType(GestureDetector), findsOneWidget);
    expect(find.byType(Opacity), findsOneWidget);


    // Gesture tests.
    await tester.tap(find.byType(OpacityButton));
    await tester.longPress(find.byType(OpacityButton));
  });
}
