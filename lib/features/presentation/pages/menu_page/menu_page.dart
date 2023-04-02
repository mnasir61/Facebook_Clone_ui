import 'package:facebook_ui/features/presentation/pages/menu_page/widget/single_post_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  ScrollController? _scrollController;
  bool? isPadding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            uploadPostWidget(),
            Divider(
              thickness: 7,
              color: Colors.grey[400],
            ),
            SizedBox(
              height: 8,
            ),
            _storeAndReelsWidget(),
            SizedBox(
              height: 8,
            ),
            Divider(
              thickness: 7,
              color: Colors.grey[400],
            ),
            ListView.builder(
              itemCount: 8,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context, index) {
                return SinglePostCardWidget();
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget uploadPostWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: CircleAvatar(),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 17),
            height: 45,
            width: 350,
            decoration: BoxDecoration(
              border: Border.all(width: 0.75, color: Colors.grey.shade700),
              borderRadius: BorderRadius.circular(50),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "What's on your mind?",
                hintStyle: TextStyle(fontSize: 18),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
            ),
            child: Icon(
              Icons.photo_sharp,
              color: Colors.green,
              size: 40,
            ),
// child: Image.asset("assets/facebook_logo_02.png"),
          ),
        ],
      ),
    );
  }

  _storeAndReelsWidget() {
    return Container(
      height: 220,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              width: 130,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Card ${index + 1}',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
