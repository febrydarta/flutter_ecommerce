import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/API/api.dart';
import 'package:flutter_ecommerce/API/category/list_category_response.dart';
import 'package:flutter_ecommerce/pages/list_subcategory/list_subcatgory_page.dart';


class ListCategory extends StatefulWidget {
  final List<Data> dataCategory;
  const ListCategory({
    Key? key, required this.dataCategory,
  }) : super(key: key);

  @override
  State<ListCategory> createState() => _ListCategoryState();
}

class _ListCategoryState extends State<ListCategory> {
  @override
  Widget build(BuildContext context) {
    // print(widget.dataCategory.length);
    return Container(
      height: 130,
      child: ListView.builder(
        itemCount: widget.dataCategory.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ListSubcategoryPage()));
            },
            child: Container(
              margin: (index == 0)? EdgeInsets.fromLTRB(15, 20, 10, 20) : EdgeInsets.fromLTRB(0, 20, 10, 20),
              width: 155,
              height: 60,
              child: ClipRRect( //menangani kode radius
                borderRadius: BorderRadius.circular(10),
                child: Stack( //mebuat widget saling bertumpang tindih
                  children: [
                    Image.network(
                      Api.IMG_URL + widget.dataCategory[index].imageCategory!,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      color: Color(0x97727272),
                    ),
                    Center(
                      child: Text(
                        widget.dataCategory[index].nameCategory!,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),


          );
        },
      ),
    );
  }
}