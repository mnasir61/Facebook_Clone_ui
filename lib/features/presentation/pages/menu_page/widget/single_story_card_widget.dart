import 'package:flutter/material.dart';

class SingleStoryCardWidget extends StatelessWidget {
  const SingleStoryCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey,
      ),
    );
  }
}
