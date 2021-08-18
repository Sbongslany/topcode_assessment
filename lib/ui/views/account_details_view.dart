import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountDetailsView extends StatefulWidget {
  const AccountDetailsView({Key? key}) : super(key: key);

  @override
  _AccountDetailsViewState createState() => _AccountDetailsViewState();
}

class _AccountDetailsViewState extends State<AccountDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Details View')),
    );
  }
}
