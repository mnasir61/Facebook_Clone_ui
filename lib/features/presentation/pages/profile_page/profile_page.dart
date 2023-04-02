import 'package:facebook_ui/features/presentation/pages/profile_page/widgets/all_shortcuts_widget.dart';
import 'package:facebook_ui/features/presentation/pages/profile_page/widgets/single_shortcut_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 65,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              "Menu",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 38,
              ),
            ),
            Spacer(),
            Container(
              height: 45,
              width: 45,
              child: Icon(
                Icons.settings,
                size: 30,
                color: Colors.black,
              ),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            SizedBox(
              width: 10,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 80,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        CircleAvatar(
                          maxRadius: 25,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          "Muhammad Hassan",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 20,
                        ),
                        Stack(
                          children: [
                            Icon(
                              CupertinoIcons.refresh,
                              color: Colors.grey[700],
                              size: 45,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Positioned(
                              bottom: 6,
                              left: 2,
                              right: 2,
                              child: CircleAvatar(
                                maxRadius: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          child: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 30,
                            color: Colors.black,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(50),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "Your shortcuts",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return SingleShortcutWidget();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "All shortcuts",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                // height: 200,
                // width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  itemCount: 12,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2.5,
                      mainAxisSpacing: 0,
                      crossAxisSpacing:5
                  ),
                  itemBuilder: (context, index){
                    return AllShortcutWidget();
                  },
                ),
              ),
              SizedBox(height: 15,),
              _containerButtonWidget(context,text: "See more"),
              SizedBox(height: 10,),
              Divider(thickness: 1),
              _rowDropDownWidget(text: "Community resources",iconData: FontAwesomeIcons.handshakeSimple),
              _rowDropDownWidget(text: "Help & support",iconData: FontAwesomeIcons.solidCircleQuestion),
              _rowDropDownWidget(text: "Setting & privacy",iconData: Icons.settings),
              _containerButtonWidget(context,text: "Log out"),
            ],
          ),
        ),
      ),
    );
  }

  _containerButtonWidget(BuildContext context,{String? text}) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      decoration: BoxDecoration(color: Colors.grey[400], borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          "$text",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
      ),
    );
  }

  _rowDropDownWidget({String? text, IconData? iconData}) {
    return Column(
      children: [
        Row(
          children: [
            Icon(iconData,size: 38,color: Colors.teal[500],),
            SizedBox(width: 10,),
            Text("$text",style: TextStyle(fontSize: 18.5,fontWeight: FontWeight.w600),),
            Spacer(),
            Icon(Icons.keyboard_arrow_down,size: 31,color: Colors.grey[750],)

          ],
        ),
        SizedBox(height: 2,),
        Divider(thickness: 1),
      ],
    );
  }
}
