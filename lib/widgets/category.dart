import 'package:flutter/material.dart';

class CategoryItem extends StatefulWidget {
  CategoryItem({Key? key}) : super(key: key);

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xffD9F3FF)),
    );
  }
}
