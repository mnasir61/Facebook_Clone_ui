import 'package:facebook_ui/features/presentation/pages/menu_page/widget/single_post_card_widget.dart';
import 'package:facebook_ui/features/presentation/pages/watch_page/widgets/single_watch_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

class WatchPage extends StatefulWidget {
  const WatchPage({Key? key}) : super(key: key);

  @override
  State<WatchPage> createState() => _WatchPageState();
}

class _WatchPageState extends State<WatchPage> {
  int selectedIndex = 0;

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Text(
                "Watch",
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
                  Icons.person
                    ,
                  size: 30,
                  color: Colors.black,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              SizedBox(width: 10,),
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

          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Column(
              children: [
                _watchRowFilterButtons()
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Divider(
                thickness: 7,
                color: Colors.grey[400],
              ),
              ListView.builder(
                itemCount: 8,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  return SingleWatchCardWidget();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  _watchRowFilterButtons() {
    return Padding(
      padding: const EdgeInsets.only(left: 12,right: 12,bottom: 10),
      child: Row(

        children: <Widget>[
          GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: selectedIndex == 0 ? Colors.blue[100] : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),),
              child: Text(
                "For You",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: selectedIndex == 0 ? Colors.blue[700] : Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(width: 25),
          GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: selectedIndex == 1 ? Colors.blue[100] : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  ),
              child: Text(
                "Live",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: selectedIndex == 1 ? Colors.blue[700] : Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 25,
          ),
          GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: selectedIndex == 2 ? Colors.blue[100] : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  ),
              child: Text(
                "Gaming",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: selectedIndex == 2 ? Colors.blue[700] : Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 25,
          ),
          GestureDetector(
            onTap: () {
              updateIndex(3);
            },
            child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: selectedIndex == 3 ? Colors.blue[100] : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                 ),
              child: Text(
                "Following",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: selectedIndex == 3 ? Colors.blue[700] : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
