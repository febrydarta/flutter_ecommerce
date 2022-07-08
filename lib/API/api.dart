import 'dart:convert';

import 'package:flutter_ecommerce/API/cart/CartResponse.dart';
import 'package:flutter_ecommerce/API/category/list_category_response.dart';
import 'package:flutter_ecommerce/API/product/ListProductResponse.dart';
import 'package:http/http.dart' as http;

import 'carousel/ListCarouselResponse.dart';
import 'feed/list_feed_response.dart';

const BASE_URL = "http://192.168.100.3/webservice_tokolauwba_ci/index.php/Api/";

class Api {
  static const IMG_URL = "http://192.168.100.3/webservice_tokolauwba_ci/image/";

  // Api list Category
  static Future<ListCategoryResponse> getListCategory() async {
    var url = BASE_URL + "Category/select_category";
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return ListCategoryResponse.fromJson(jsonDecode(response.body));
    } else {
      throw " unable to show list category";
    }
  }

  //API Carousel

  static Future<ListCarouselResponse> getListCarousel() async {
    var url = BASE_URL + "Carousel/select_carousel";
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return ListCarouselResponse.fromJson(jsonDecode(response.body));
    } else {
      throw " unable to show list carousel";
    }
  }

  static Future<CartResponse> getListCart(String id) async {
    var url = BASE_URL + "Cart/select_cart/$id";
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return CartResponse.fromJson(jsonDecode(response.body));
    }
    throw "unable to show list cart";
  }

  //PRODUCT
  static Future<ListProductResponse> getListProduct() async {
    var url = BASE_URL + "Product/select_product";
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return ListProductResponse.fromJson(jsonDecode(response.body));
    } else {
      throw "unable to show list product";
    }
  }

  // FEED
  static Future<ListFeedResponse> getFeeds() async {
    var url = BASE_URL + "Feeds/select_feeds";
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return ListFeedResponse.fromJson(jsonDecode(response.body));
    } else {
      throw "unable to show list feeds";
    }
  }
}
