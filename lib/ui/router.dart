// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:topcode_assessment/ui/views/account_details_view.dart';
import 'package:topcode_assessment/ui/views/accout_view.dart';

class Routers {
  /// App start up (loading) page
  static const String startUp = '/';

  /// Spotify Category Page
  static const String accountDetailsView = '/accountDetailsView';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case startUp:
        return MaterialPageRoute(builder: (_) => AccountView());
      case accountDetailsView:
        return MaterialPageRoute(
            builder: (_) => AccountDetailsView(
                  accountDetails: null,
                ));
      default:
        throw UnimplementedError();
    }
  }
}
