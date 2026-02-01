import 'package:e_shop/utils/routes/routesName.dart';
import 'package:e_shop/view/discover/dicover.dart';
import 'package:e_shop/view/homapage/homePage.dart';
import 'package:e_shop/view/myorder/myorder.dart';
import 'package:e_shop/view/profile/profile.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final Arguments = settings.name;

    switch (settings.name) {
      case Routesname.Homepage:
        return MaterialPageRoute(builder: (context) => Homepage());
      case Routesname.Discover:
        return MaterialPageRoute(builder: (context) => dicoverScreen());
      case Routesname.Profile:
        return MaterialPageRoute(builder: (context) => profileScreen());
      case Routesname.MyOrder:
        return MaterialPageRoute(builder: (context) => myOrderScreen());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(body: Text('No Routes Defined')),
        );
    }
  }
}
