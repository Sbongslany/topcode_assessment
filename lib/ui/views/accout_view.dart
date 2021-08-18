// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:topcode_assessment/core/models/account_model.dart';
import 'package:topcode_assessment/core/services/Services.dart';

import 'account_details_view.dart';

class AccountView extends StatefulWidget {
  const AccountView({Key key}) : super(key: key);

  @override
  _AccountViewState createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  Future<List<Account>> account;

  bool isLoading = false;
  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    isLoading = true;
  }

  //
  @override
  void initState() {
    super.initState();
    account = Service().fetchAccounts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Accounts'),
        actions: [
          FlatButton.icon(
              onPressed: () {}, icon: Icon(Icons.add), label: Text(''))
        ],
      ),
      body: Container(
        child: FutureBuilder<List<Account>>(
          future: account,
          builder: (context, snapshot) {
            return isLoading
                ? Center(child: CircularProgressIndicator())
                : ListView.separated(
                    itemCount: snapshot.data.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(),
                    itemBuilder: (_, index) => ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => AccountDetailsView(
                                  accountDetails: snapshot.data[index])));
                        },
                        title: Text(
                          '${snapshot.data[index].name}',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        subtitle: Text(
                          '${snapshot.data[index].accountNumber}',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            color: Colors.white,
                          ),
                        )));
          },
        ),
      ),
    );
  }
}
