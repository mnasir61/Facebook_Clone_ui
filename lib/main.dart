import 'package:facebook_ui/features/app/splash_screen/splash_screen.dart';
import 'package:facebook_ui/features/presentation/pages/credentials/sign_in_page.dart';
import 'package:facebook_ui/on_generate_route.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
        child: SignInPage(),
      ),
      onGenerateRoute: OnGenerateRoute.route,
      initialRoute: "mainPage",
    );
  }
}
