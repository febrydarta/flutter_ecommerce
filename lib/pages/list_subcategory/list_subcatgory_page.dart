import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/detail_subcategory/detail_subcategory_page.dart';

class ListSubcategoryPage extends StatefulWidget {
  const ListSubcategoryPage({Key? key}) : super(key: key);

  @override
  _ListSubcategoryPageState createState() => _ListSubcategoryPageState();
}

class _ListSubcategoryPageState extends State<ListSubcategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
              // jarak
              child: Text(
                "List Subcategory",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: GridView.builder(
                  itemCount: 5,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DetailSubcategoryPage(),
                          ),
                        );
                      },
                      child: Container(
                        width: 150,
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Stack(
                            children: [
                              Image.network(
                                "https://awsimages.detik.net.id/community/media/visual/2019/09/18/460a2527-3579-4cf0-8926-375676c488e6_43.jpeg?w=700&q=90",
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                color: Color(0x200fbbff),
                              ),
                              Positioned(
                                top: 0,
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Center(
                                  child: Text(
                                    "Baju Denim",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
