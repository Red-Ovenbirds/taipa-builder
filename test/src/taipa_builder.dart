import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:taiper/taiper.dart';

import '../util.dart';


void main() {
  testWidgets("TaipaBuilder", (WidgetTester tester) async {
    final type1 = "text/body";
    final value1 = "valueee";
    final type2 = "dsa/title";
    final value2 = "valueeeee";

    final cbDatas = [
      ClayblockData(type: type1, value: value1),
      ClayblockData(type: type1, value: value1),
      ClayblockData(type: type1, value: value2),
      ClayblockData(type: type2, value: value2),
    ];

    await pumpWithMaterial(tester, Row(
      children: TaipaBuilder().construct(cbDatas),
    ));

    expect(find.text(value1), findsNWidgets(2));
    expect(find.text(value2), findsOneWidget);
  });
}