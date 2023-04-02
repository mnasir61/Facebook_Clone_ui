



import 'package:flutter/material.dart';

class SingleMarketCardWidget extends StatelessWidget {
  const SingleMarketCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 220,
          color: Colors.grey,
          width: 240,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,top: 10),
          child: Text("Free Iphone 14pro",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,color: Colors.black
          ),),
        )
      ],
    );
  }
}
