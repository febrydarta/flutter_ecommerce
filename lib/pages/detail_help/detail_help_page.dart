import 'package:flutter/material.dart';

class DetailHelpPage extends StatelessWidget {
  const DetailHelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Help"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "https://img.itinari.com/pages/images/original/a92b0318-ed91-441b-8b0a-051f13ab8ec5-istock-957125704.jpg?ch=DPR&dpr=1&w=1600&s=ec6fdbbc6a9aa53b6b300c0b9fdd4fdc",
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "judul news feed",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "lorem",
            ),
          )
        ],
      ),
    );
  }
}
