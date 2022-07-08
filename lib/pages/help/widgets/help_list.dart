import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/detail_help/detail_help_page.dart';

class HelpList extends StatefulWidget {
  const HelpList({
    Key? key,
  }) : super(key: key);

  @override
  State<HelpList> createState() => _HelpListState();
}

class _HelpListState extends State<HelpList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10, //perulangan gambar dan data
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailHelpPage(),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 1, spreadRadius: 0.2),
                  ]),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://img.itinari.com/pages/images/original/a92b0318-ed91-441b-8b0a-051f13ab8ec5-istock-957125704.jpg?ch=DPR&dpr=1&w=1600&s=ec6fdbbc6a9aa53b6b300c0b9fdd4fdc",
                      fit: BoxFit.cover,
                      width: 40,
                      height: 40,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("cara melakukakan pesan COD")
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
