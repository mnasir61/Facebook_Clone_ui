import 'package:facebook_ui/features/presentation/pages/friends_page/friends_page.dart';
import 'package:facebook_ui/features/presentation/pages/main_page/widgets/add_container_widget.dart';
import 'package:facebook_ui/features/presentation/pages/main_page/widgets/go_to_messenger_widget.dart';
import 'package:facebook_ui/features/presentation/pages/main_page/widgets/search_container_widget.dart';
import 'package:facebook_ui/features/presentation/pages/market_place_page/market_place_page.dart';
import 'package:facebook_ui/features/presentation/pages/menu_page/menu_page.dart';
import 'package:facebook_ui/features/presentation/pages/notification_page/notification_page.dart';
import 'package:facebook_ui/features/presentation/pages/profile_page/profile_page.dart';
import 'package:facebook_ui/features/presentation/pages/watch_page/watch_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int _onTapChange = 0;

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        actions: [
          AddContainerWidget(),
          SearchContainerWidget(),
          GoToMessengerWidget(),
        ],
        title: Container(height: 140, width: 140, child: Image.asset("assets/facebook_logo_01.png")),
        bottom: TabBar(
          controller: _tabController,
          onTap: (value) {
            setState(() {
              _onTapChange = value;
            });
          },
          tabs: [
            tabBarIconWidget(iconData: Icons.home, elseIconData: Icons.home_outlined, index: 0),
            tabBarIconWidget(
                iconData: Icons.people_alt, elseIconData: Icons.people_alt_outlined, index: 1),
            tabBarIconWidget(
                iconData: Icons.ondemand_video, elseIconData: Icons.ondemand_video_outlined, index: 2),
            tabBarIconWidget(
                iconData: Icons.shopping_bag, elseIconData: Icons.shopping_bag_outlined, index: 3),
            tabBarIconWidget(
                iconData: Icons.notifications_sharp,
                elseIconData: Icons.notifications_outlined,
                index: 4),
            tabBarIconWidget(iconData: Icons.person, elseIconData: Icons.person_outline, index: 5),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          MenuPage(),
          FriendsPage(),
          WatchPage(),
          MarketPlacePage(),
          NotificationPage(),
          ProfilePage(),
        ],
      ),
    );
  }

  tabBarIconWidget({int? index, IconData? iconData, IconData? elseIconData}) {
    return Tab(
        icon: Icon(_onTapChange == index ? iconData : elseIconData,
            color: _onTapChange == index ? Colors.blue : Colors.grey));
  }
}
