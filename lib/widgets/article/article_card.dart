import 'package:flutter/material.dart';

class ArticleCard extends StatefulWidget {
  const ArticleCard({super.key, required String child});

  @override
  State<ArticleCard> createState() => _ArticleCardState();
}

class _ArticleCardState extends State<ArticleCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        color: Color.fromARGB(255, 199, 199, 199),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.account_circle), // 添加用戶頭像圖標
                Text('Username'), // 添加用戶名
              ],
            ),
            Text('Title'), // 添加標題
            Text('Description'), // 添加描述
            Row(
              children: [
                Icon(
                  Icons.thumb_up,
                  size: 16,
                ), // 添加贊數圖標
                Text('Likes'), // 添加贊數
                Icon(
                  Icons.favorite,
                  size: 16,
                ), // 添加收藏圖標
                Text('Favorites'), // 添加收藏數
              ],
            ),
          ],
        ),
      ),
    );
  }
}
