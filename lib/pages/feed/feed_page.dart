import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/feed/widgets/feed_list.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),// jarak
          child: Text(
            "Feeds",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        //mengambil semua ruang kosong yang tersedia , tidak ada area yg tersisa
        FeedList(),


      ],
    );
  }
}



