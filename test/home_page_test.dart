import 'package:counter_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget createHomeScreen() => const MaterialApp(
      home: MyHomePage(title: 'testapp'),
    );

void main() {
  testWidgets('FloatingActionButton changes state when pressed',
      (widgetTester) async {
    await widgetTester.pumpWidget(createHomeScreen());

    expect(find.byType(FloatingActionButton), findsOneWidget);

    expect(find.byIcon(Icons.add), findsOneWidget);

    expect(find.text('0'), findsOneWidget);

    await widgetTester.tap(find.byType(FloatingActionButton));

    await widgetTester.pump();

    expect(find.text('1'), findsOneWidget);
  });
}
