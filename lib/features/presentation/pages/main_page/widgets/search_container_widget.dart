import 'package:flutter/material.dart';

class SearchContainerWidget extends StatelessWidget {
  const SearchContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5),
      child: Container(
        // height: 0,
        width: 45,
        child: Icon(
          Icons.search,
          size: 30,
          color: Colors.black,
        ),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
