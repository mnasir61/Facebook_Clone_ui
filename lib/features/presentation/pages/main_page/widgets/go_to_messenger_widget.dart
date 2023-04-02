import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GoToMessengerWidget extends StatelessWidget {
  const GoToMessengerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 10),
      child: Stack(
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(50),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Icon(
                  FontAwesomeIcons.facebookMessenger,
                  color: Colors.black,
                  size: 28,
                )),
          ),
          Positioned(
            top: 2.5,
            right: 2.5,
            child: Container(
              height: 18,
              width: 18,
              child: Center(child: Text("4")),
              decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(17)),
            ),
          ),
        ],
      ),
    );
  }
}
