// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:topcode_assessment/core/models/account_model.dart';
import 'package:topcode_assessment/ui/widgets/text_description.dart';

class AccountDetailsView extends StatefulWidget {
  Account accountDetails;
  AccountDetailsView({this.accountDetails});

  @override
  _AccountDetailsViewState createState() =>
      _AccountDetailsViewState(accountDetails);
}

class _AccountDetailsViewState extends State<AccountDetailsView> {
  Account accountDetails;

  _AccountDetailsViewState(this.accountDetails);

  bool isLoading = false;
  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    isLoading = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: isLoading
                  ? Center(child: CircularProgressIndicator())
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 300),
                              Text(
                                '${accountDetails.name}',
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 40,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w900,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                '${accountDetails.accountNumber}',
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 31,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Divider(color: Colors.black38),
                              SizedBox(height: 32),
                              TextDescription(
                                name: '${accountDetails.accountNumber}',
                              ),
                              Divider(color: Colors.black38),
                              SizedBox(height: 32),
                              Text(
                                'Balance',
                                style: TextStyle(fontSize: 40),
                              ),
                              TextDescription(
                                name: '${accountDetails.balance}',
                              ),
                              Text(
                                'Overdraft',
                                style: TextStyle(fontSize: 40),
                              ),
                              TextDescription(
                                name: '${accountDetails.overdraft}',
                              ),
                              Text(
                                'Active',
                                style: TextStyle(fontSize: 40),
                              ),
                              TextDescription(
                                name: '${accountDetails.active}',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
