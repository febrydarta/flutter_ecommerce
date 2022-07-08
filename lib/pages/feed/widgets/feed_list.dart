import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/detail_feed/detail_feed_page.dart';

class FeedList extends StatefulWidget {
  const FeedList({
    Key? key,
  }) : super(key: key);

  @override
  State<FeedList> createState() => _FeedListState();
}

class _FeedListState extends State<FeedList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10, //perulangan gambar dan data
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 3, spreadRadius: 0.2)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image.network(
                    "https://img.itinari.com/pages/images/original/a92b0318-ed91-441b-8b0a-051f13ab8ec5-istock-957125704.jpg?ch=DPR&dpr=1&w=1600&s=ec6fdbbc6a9aa53b6b300c0b9fdd4fdc",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 130,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Diskon murah meriah 40%",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text("Nikmati diskonnya, syrata minimal 400rb pembelian"),
                      OutlinedButton(
                        onPressed: () {
                          //pindah ke halaman detailfeed page
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailFeedPage(),
                            ),
                          );
                        },
                        child: Text("view more"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
