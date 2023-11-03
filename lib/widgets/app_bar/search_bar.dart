import 'package:dcard_demo/config/theme_color.dart';
import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.inputColor,
      ),
      child: const TextField(
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          isCollapsed: true,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
            size: 16,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: double.infinity,
            maxWidth: double.infinity,
          ),
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
