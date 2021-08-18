// @dart=2.9
import 'package:flutter/material.dart';
import 'package:topcode_assessment/ui/router.dart';

void main() {
  runApp(BankAccountApp());
}

class BankAccountApp extends StatelessWidget {
  const BankAccountApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'topCode Assessment',
      theme: ThemeData.dark(),
      initialRoute: Routers.startUp,
      onGenerateRoute: Routers.generateRoute,
    );
  }
}
