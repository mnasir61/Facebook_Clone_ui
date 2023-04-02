

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingleWatchCardWidget extends StatelessWidget {
  const SingleWatchCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(

            children: [
              Row(

                children: [
                  CircleAvatar(),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Baverly",
                            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                          ),SizedBox(width: 5,),
                          Text("-"),
                          SizedBox(width: 5,),
                          Text("Follow",style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.w500),),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "6h .",
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            FontAwesomeIcons.earth,
                            color: Colors.grey[400],
                            size: 16,
                          )
                        ],
                      )
                    ],
                  ),

                  Spacer(),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.grey[600],
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    color: Colors.grey[600],
                    Icons.close,
                    size: 30,
                  )
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "All you can Eat in just Rs:1400- only \n Yesterday visted studio 7teas for iftar dinner \n buffet. it wa my first experience the quantity and quality everyting was on the mark , they have so many varities of dishes",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 3,
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Image.asset("assets/food_post.jpg"),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: _reactionRowWidget(),
        ),
        Divider(
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _rowActionButtons(icon: Icons.thumb_up_alt_outlined, name: "Like"),
              _rowActionButtons(icon: FontAwesomeIcons.comment, name: "Comment"),
              _rowActionButtons(icon: Icons.share, name: "Share"),
            ],
          ),
        ),
        Divider(
          thickness: 7,
          color: Colors.grey[400],
        )
      ],
    );
  }

  _rowActionButtons({String? name, IconData? icon}) {
    return Row(
      children: [
        Icon(
          icon,
          size: 30,
          color: Colors.grey,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "$name",
          style: TextStyle(fontSize: 16, color: Colors.black54),
        )
      ],
    );
  }

  _reactionRowWidget() {
    return Row(
      children: [
        Image.asset(
          "assets/reaction 1.png",
          height: 23,
        ),
        Image.asset(
          "assets/reaction 2.png",
          height: 23,
        ),
        Image.asset(
          "assets/reaction 3.png",
          height: 23,
        ),
        SizedBox(
          width: 3,
        ),
        Text("You and 118 others"),
        Spacer(),
        Text("49 comments"),
        SizedBox(width: 3),
        Text("-"),
        SizedBox(width: 3),
        Text("6 shares"),
      ],
    );
  }
}
