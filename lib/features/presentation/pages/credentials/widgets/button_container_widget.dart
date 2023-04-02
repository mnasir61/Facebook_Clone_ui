import 'package:facebook_ui/features/app/common/style.dart';
import 'package:flutter/material.dart';

class ButtonContainerWidget extends StatelessWidget {
  final String? text;
  const ButtonContainerWidget({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: buttonColor, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            text ?? "",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ));
  }
}
