import 'package:facebook_ui/features/presentation/pages/market_place_page/widgets/single_market_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MarketPlacePage extends StatelessWidget {
  const MarketPlacePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 65,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Text(
                "Marketplace",
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
                  Icons.person,
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _rowButtons(icon: FontAwesomeIcons.edit, text: "Sell"),
                        _rowButtons(icon: Icons.list, text: "Categories"),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text("Today's Picks",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                        Spacer(),
                        Icon(
                          Icons.location_on,
                          color: Colors.blue[700],
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Topi, Pakistan",
                          style: TextStyle(color: Colors.blue[700], fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                itemCount: 8,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.9,
                  mainAxisSpacing: 0,
                  crossAxisSpacing:5
                ),
                itemBuilder: (context, index){
                  return SingleMarketCardWidget();
                },
              ),

            ],
          ),
        ));
  }

  _rowButtons({
    IconData? icon,
    String? text,
  }) {
    return Container(
      width: 210,
      height: 45,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.grey[300]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 25,
          ),
          SizedBox(width: 8),
          Text(
            "$text",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          )
        ],
      ),
    );
  }
}
