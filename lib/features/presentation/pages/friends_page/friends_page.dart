import 'package:facebook_ui/features/app/common/style.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: StickyHeader(
          header: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Friends",
                  style: TextStyle(
                    fontSize: 38,
                  ),
                ),
                Container(
                  height: 45,
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
              ],
            ),
          ),
          content: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Column(
                children: [
                  SizedBox(height: 5),
                  Row(
                    children: [
                      _friendsFilterButton(name: "Suggestions"),
                      SizedBox(width: 15),
                      _friendsFilterButton(name: "Your Friends"),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Text(
                        "Friend Requests",
                        style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 4),
                      Text(
                        "375",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.red),
                      ),
                      Spacer(),
                      Text(
                        "See all",
                        style: TextStyle(fontSize: 20, color: buttonColor),
                      ),
                    ],
                  ),
                  ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) {
                      return _friendRequests();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _friendsFilterButton({String? name}) {
    return Container(
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
        decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(40)),
        child: Center(
          child: Text(
            "$name",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ));
  }

  _conformAndDeleteButtonWidget({String? text, Color? color, Color? textColor}) {
    return Container(
      height: 40,
      width: 160,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          "$text",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: textColor),
        ),
      ),
    );
  }

  _friendRequests() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          CircleAvatar(maxRadius: 50),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shahbaz Ahmed",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "5w",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      width: 50,
                      child: Stack(
                        children: [
                          Positioned(
                            child: Container(
                              height: 27,
                              width: 27,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2, color: Colors.white),
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: Container(
                              height: 27,
                              width: 27,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2, color: Colors.white),
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "10 mutual friends",
                      style: TextStyle(fontSize: 15, color: Colors.grey[900]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    _conformAndDeleteButtonWidget(
                        text: "Confirm", color: buttonColor, textColor: Colors.white),
                    SizedBox(
                      width: 10,
                    ),
                    _conformAndDeleteButtonWidget(
                        text: "Delete", color: Colors.grey[300], textColor: Colors.black),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
