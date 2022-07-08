import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String category;
  const SectionTitle({
    Key? key,required this.category
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 10),
      child: Text(
        "Category",
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 24,
        ),
      ),
    );
  }
}