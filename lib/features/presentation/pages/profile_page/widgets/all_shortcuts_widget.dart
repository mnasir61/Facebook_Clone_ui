import 'package:flutter/material.dart';

class AllShortcutWidget extends StatelessWidget {
  const AllShortcutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 80,
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.amp_stories,
              size: 40,
              color: Colors.blue,
            ),
            Text("Stories"),
          ],
        ),
      ),
    );
  }
}
