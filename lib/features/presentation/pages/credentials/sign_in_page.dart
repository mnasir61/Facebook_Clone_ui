import 'package:facebook_ui/consts.dart';
import 'package:facebook_ui/features/app/common/style.dart';
import 'package:facebook_ui/features/presentation/pages/credentials/widgets/button_container_widget.dart';
import 'package:facebook_ui/features/presentation/pages/credentials/widgets/form_container_widget.dart';
import 'package:facebook_ui/features/presentation/pages/main_page/main_page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackGroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "English(US)",
                style: TextStyle(color: Colors.grey[400], fontSize: 16),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                height: 90,
                width: 90,
                child: Image.asset("assets/facebook_logo_02.png"),
              ),
              SizedBox(
                height: 70,
              ),
              FormContainerWidget(
                text: "Mobile number or email",
              ),
              SizedBox(
                height: 30,
              ),
              FormContainerWidget(
                obscureText: true,
                text: "Password",
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pushNamedAndRemoveUntil(context, PageConst.mainPage, (route) => false);
                  });
                },
                child: ButtonContainerWidget(
                  text: "Sign in",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
