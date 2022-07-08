import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/API/api.dart';
import 'package:flutter_ecommerce/API/product/ListProductResponse.dart';

class ListNewProduct extends StatefulWidget {
  final List<Data> data;
  const ListNewProduct({
    Key? key, required this.data,
  }) : super(key: key);

  @override
  State<ListNewProduct> createState() => _ListNewProductState();
}

class _ListNewProductState extends State<ListNewProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        itemCount: widget.data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: 140,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: InkWell(
              onTap: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => DetailProductPage(
                //       id: idProduct,
                //     ),
                //   ),
                // );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      Api.IMG_URL + widget.data[index].image!, //image
                      width: double.infinity,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.data[index].nameCategory!),
                        Text(widget.data[index].nameProduct!), //product name
                        SizedBox(
                          height: 5,
                        ),
                        Text("Rp.${widget.data[index].price!}"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}