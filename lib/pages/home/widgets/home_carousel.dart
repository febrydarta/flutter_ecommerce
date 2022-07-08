import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/API/carousel/ListCarouselResponse.dart';


class HomeCarousel extends StatelessWidget {
  final List<Data> listCarousel;
  const HomeCarousel({
    Key? key, required this.listCarousel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: listCarousel.map((value) {
        return Container(
          width: double.infinity,
          margin: EdgeInsets.only(right: 10),
          child: Image.network(
            value.imageCarousel!,
          ),
        );
      }).toList(),
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true,
      ),
    );
  }
}