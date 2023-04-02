import 'package:facebook_ui/features/app/common/style.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final Widget? child;

  const SplashScreen({Key? key, this.child}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (_) => widget.child!), (route) => false);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackGroundColor,
      body: Center(
        child: Container(
          height: 130,
          width: 130,
          child: Image.asset(
            "assets/facebook_logo_02.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
