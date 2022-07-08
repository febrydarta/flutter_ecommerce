import 'package:flutter/material.dart';

class SearchItems extends StatelessWidget {
  const SearchItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        decoration: BoxDecoration(
          color: Colors.orange[700],
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
          ),
          child: TextFormField(
            textAlignVertical: TextAlignVertical.center, //mengatur rata tulisan sejajar dengan icon
            maxLines: 1,
            style: TextStyle(fontSize: 16),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
            ),
          ),
        )
    );
  }
}