import 'package:dcard_demo/config/theme_color.dart';
import 'package:dcard_demo/widgets/app_bar/search_bar.dart';
import 'package:dcard_demo/widgets/article/article_card.dart';
import 'package:dcard_demo/widgets/article/article_list.dart';
import 'package:dcard_demo/widgets/bottom_navigation/bottom_navigation_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.mainColor,
          elevation: 0,
          title: const SearchAppBar(),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48.0),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.2,
                  ),
                ),
              ),
              child: const TabBar(
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                unselectedLabelStyle: TextStyle(fontSize: 16),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Color.fromARGB(255, 40, 100, 161),
                tabs: [
                  Tab(text: "推薦"),
                  Tab(text: '全部'),
                  Tab(text: '追蹤'),
                  Tab(text: '主題'),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ArticleList(),
            Center(child: Text("Content for Tab 1")),
            Center(child: Text("Content for Tab 1")),
            Center(child: Text("Content for Tab 2")),
          ],
        ),
        bottomNavigationBar: BottomNavigationApp(),
      ),
    );
  }
}

class CircleTabIndeicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndeicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
