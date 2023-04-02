import 'package:flutter/material.dart';

class FormContainerWidget extends StatelessWidget {
  final String? text;
  final Color? color;
  final bool? obscureText;

  const FormContainerWidget({Key? key, this.text, this.color, this.obscureText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        obscureText: obscureText ?? false,
        style: TextStyle(color: Colors.white, fontSize: 17),
        cursorHeight: 24,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.white, fontSize: 17),
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w400),
          labelText: text,
          contentPadding: EdgeInsets.only(left: 0, right: 10, bottom: 12, top: 10),
          suffixIcon: Icon(
            Icons.info_outline,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
