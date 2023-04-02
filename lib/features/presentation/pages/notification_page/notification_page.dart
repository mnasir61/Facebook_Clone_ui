import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

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
                "Notifications",
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 10),
                child: Text("New",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
              ),
              ListView.builder(

                itemCount: 3,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index){
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                    color: Colors.blueGrey[100]  ,
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              maxRadius: 45,
                            ),
                            Positioned(
                              bottom: 1,
                              right: 1,
                              child: Container(
                                height: 35,
                                width: 35,
                                child: Image.asset("assets/reaction 1.png"),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Yousaf Akheraz likes your video: \n Basic Design with turtle",style: TextStyle(fontSize: 19),),
                            SizedBox(height: 8,),
                            Text("1 hour ago",style: TextStyle(fontSize: 15),)
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.more_horiz,size: 28,),
                      ],
                    ),
                  );
                },

              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Text("Earlier",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(

                itemCount: 8,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index){
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),

                    child: Row(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              maxRadius: 45,
                            ),
                            Positioned(
                              bottom: 1,
                              right: 1,
                              child: Container(
                                height: 35,
                                width: 35,
                                child: Image.asset("assets/reaction 1.png"),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Yousaf Akheraz likes your video: \n Basic Design with turtle",style: TextStyle(fontSize: 19),),
                            SizedBox(height: 8,),
                            Text("1 hour ago",style: TextStyle(fontSize: 15),)
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.more_horiz,size: 28,),
                      ],
                    ),
                  );
                },

              ),
            ],
          ),
        ));
  }
}
