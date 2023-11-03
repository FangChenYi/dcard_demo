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
        color: Colors.white,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.account_circle,
                  size: 18,
                ),
                SizedBox(width: 10),
                Text(
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  'Username',
                ),
              ],
            ),
            Text(
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              'Title',
            ),
            Text(
              style: TextStyle(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              'Your long text goes here, and it should not exceed one line with ellipsis when overflowed.',
            ),
            Row(
              children: [
                Icon(
                  Icons.favorite,
                  size: 16,
                  color: Colors.red,
                ),
                SizedBox(width: 5),
                Text(
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  'Likes',
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.chat_bubble,
                  size: 16,
                  color: Colors.blue,
                ),
                SizedBox(width: 5),
                Text(
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  'Comments',
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.bookmark,
                  size: 18,
                  color: Colors.grey,
                ),
                SizedBox(width: 5),
                Text(
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  'Bookmark',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
