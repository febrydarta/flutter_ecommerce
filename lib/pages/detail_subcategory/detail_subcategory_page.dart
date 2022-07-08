import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/detail_product/detail_product_page.dart';

class DetailSubcategoryPage extends StatefulWidget {
  const DetailSubcategoryPage({Key? key}) : super(key: key);

  @override
  _DetailSubcategoryPageState createState() => _DetailSubcategoryPageState();
}

class _DetailSubcategoryPageState extends State<DetailSubcategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Detail Subcategory",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Baju Denim",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54),
            ),
            Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 140,
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Material(
                          //khusus widget untuk warna
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => DetailProductPage()
                                ),
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    "https://th.bing.com/th/id/OIP.g6j4DVM6W0hE4B7MYxRZLwHaGR?pid=ImgDet&rs=1",
                                    width: double.infinity,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Baju Denim warna navy"),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("Rp 50000")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
