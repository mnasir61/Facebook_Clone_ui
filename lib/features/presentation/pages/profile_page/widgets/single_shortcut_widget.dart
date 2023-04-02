

import 'package:flutter/material.dart';

class SingleShortcutWidget extends StatelessWidget {
  const SingleShortcutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(maxRadius: 35),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: Offset(0, 3))
                        ]),
                    child: Icon(
                      Icons.flag,
                      color: Colors.deepOrange,
                    )),
              )
            ],
          ),
          SizedBox(height: 6),
          Text("Nwriters")
        ],
      ),
    );
  }
}
