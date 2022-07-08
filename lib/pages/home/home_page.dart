import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/API/api.dart';
import 'package:flutter_ecommerce/API/carousel/ListCarouselResponse.dart';
import 'package:flutter_ecommerce/API/category/list_category_response.dart';
import 'package:flutter_ecommerce/API/feed/list_feed_response.dart';
import 'package:flutter_ecommerce/API/product/ListProductResponse.dart';
import 'package:flutter_ecommerce/pages/home/widgets/home_carousel.dart';
import 'package:flutter_ecommerce/pages/home/widgets/list_category.dart';
import 'package:flutter_ecommerce/pages/home/widgets/list_new_product.dart';
import 'package:flutter_ecommerce/pages/home/widgets/search_items.dart';
import 'package:flutter_ecommerce/pages/home/widgets/section_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //untuk menyimpan state
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  //variabel untuk memanggil function pada class API yang untuk memanggilkan data atau request data ke webservice API
  Future<ListProductResponse> dataNewProduct = Api.getListProduct();
  Future<ListCategoryResponse> dataCategory = Api.getListCategory();
  Future<ListCarouselResponse> dataCarousel = Api.getListCarousel();
  Future<void> onSwipeRefresh() async {}

  @override
  void initState() {
    //menampilkan refreshindicator ketika ada callback/ kondisi ketika user swipe dari atas ke bawah
    WidgetsBinding.instance!
        .addPostFrameCallback((_) => _refreshIndicatorKey.currentState!.show());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        return onSwipeRefresh();
      },
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // search items
              SearchItems(),

              //carousel slider
              FutureBuilder(
                future: dataCarousel,
                builder:
                    (context, AsyncSnapshot<ListCarouselResponse> snapshot) {
                  if (snapshot.hasData) {
                    return HomeCarousel(
                      listCarousel: snapshot.data!.data!,
                    );
                  } else if (snapshot.hasError) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text("something wrong"),
                      ),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),

              SizedBox(
                height: 20,
              ),

              //subtitle category
              SectionTitle(
                category: 'Category',
              ),
              FutureBuilder(
                  future: dataCategory,
                  builder:
                      (context, AsyncSnapshot<ListCategoryResponse> snapshot) {
                    if (snapshot.hasData) {
                      // print(snapshot.data!.data!);
                      return ListCategory(
                        dataCategory: snapshot.data!.data!,
                      );
                    } else if (snapshot.hasError) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text("something wrong"),
                        ),
                      );
                    } else {
                      return Center(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                  }),

              SectionTitle(
                category: 'New product',
              ),
              FutureBuilder(
                  future: dataNewProduct,
                  builder:
                      (context, AsyncSnapshot<ListProductResponse> snapshot) {
                    if (snapshot.hasData) {
                      // print(snapshot.data!.data!);
                      return ListNewProduct(
                        data: snapshot.data!.data!,
                      );
                      //ketika error
                    } else if (snapshot.hasError) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text("something wrong"),
                        ),
                      );
                    } else {
                      return Center(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
