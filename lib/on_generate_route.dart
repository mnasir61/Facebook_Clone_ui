import 'package:facebook_ui/consts.dart';
import 'package:facebook_ui/features/presentation/pages/credentials/sign_in_page.dart';
import 'package:facebook_ui/features/presentation/pages/main_page/main_page.dart';
import 'package:flutter/material.dart';

class OnGenerateRoute {
  static Route<dynamic>? route(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case PageConst.signInPage:
        {
          return routeBuilder(SignInPage());
        }
      case PageConst.mainPage:
        {
          return routeBuilder(MainPage());
        }
      default:
        {
          NoPageFound();
        }
    }
  }
}

dynamic routeBuilder(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}

class NoPageFound extends StatelessWidget {
  const NoPageFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page not found"),
      ),
      body: Center(
        child: Text("Page not found"),
      ),
    );
  }
}
