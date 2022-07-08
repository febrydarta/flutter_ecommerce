import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/API/api.dart';
import 'package:flutter_ecommerce/API/cart/CartResponse.dart';
import 'package:flutter_ecommerce/config/curency_money.dart';
import 'package:flutter_ecommerce/config/login_pref.dart';
import 'package:flutter_ecommerce/config/utils.dart';
import 'package:flutter_ecommerce/pages/detail_product/detail_product_page.dart';
class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  String idUSer= "", username = "";
  int totalPrice = 0;

  //mengambil data keranjang
  Future<CartResponse>getCart(){
    return LoginPref.getValuePref().then((value) async{
      idUSer = value['id_user']!;
      return Api.getListCart(idUSer);

    });
  }

  //mengambil username
  getUsername(){
    LoginPref.getValuePref().then((value) async{
      username = value['username']!;
    });
  }

  //menghitung total dari keseluruhan barang pada keranjang
  setTotalCart(List<Result> result){
    totalPrice = 0;
    List.generate(result.length, (index){
      totalPrice += (int.parse(result[index].quantity!) * int.parse(result[index].priceProduct!));
    });
  }

  //mengecek data
  checkPrefBeforeCart() async{
    LoginPref.chechPref().then((value){
      if (value == false){
        // Utils.showMessage("you have to login to this app", context);
        Navigator.of(context).pop();
        // push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => Login(),
        //   ),
        // );
      }
    });
  }
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
  Widget showCart(List<Result> listCart){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left:20, top: 20, bottom: 20),
          child: Text(
            "My Cart",
            style: TextStyle(fontSize:24, fontWeight: FontWeight.w600),
          ),
        ),
        Expanded(child: showList(listCart),
        ),
      ],
    );
  }

  Widget showList(List<Result> listCart){
    return ListView.builder(itemBuilder: (context,index){
      return Container(
        width: double.infinity,
        height: 120,
        margin: EdgeInsets.symmetric(vertical:10, horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: 0.5,
              blurRadius: 4
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Row(
            children: [
              Image.network(
                Api.IMG_URL + listCart[index].imageProduct!,
                width: 120,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Expanded(child: Container(
                margin: EdgeInsets.only(bottom: 5, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // title and delete button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // nama produk
                        Text(
                          listCart[index].nameProduct!,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        //tombol hapus
                        IconButton(
                          onPressed: () {
                            Utils.showAlertYesNo(
                              onPressYes: () {
                                // Api.deleteCart(listCart[index].idCart!)
                                //     .then((value) {
                                //   Utils.showMessage(
                                //       "This item has been successfuly deleted!",
                                //       context);
                                //   Navigator.pop(context);
                                //
                                //   setState(() {
                                //     getCart();
                                //   });
                                // });
                              },
                              context: context,
                              onPressNo: () {
                                Navigator.pop(context);
                              },
                              content:
                              'Are you sure you want to delete this item?',
                              title: 'Delete item',
                            );
                          },
                          icon: Icon(
                            Icons.close,
                            color: Colors.black38,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Quantity : ${listCart[index].quantity!}",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,

                      ),
                    ),
                    Text( "price : " +
                        CurrencyMoney.indRupiah.format(
                          int.parse(listCart[index].priceProduct!)),
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    //edit button and price
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: (){
                              // Navigator.of(context).push(
                              //   MaterialPageRoute(builder: (context)=>DetailProductPage(
                              //     idProduct : listCart[index],idProduct!,
                              //     ecitCart: true,
                              //   ),
                              //   ),
                              // );
                            },
                            child: Text(
                              "Edit",
                              style: TextStyle(color: Colors.orange),
                            ),
                          ),
                          Text(
                            CurrencyMoney.indRupiah.format(
                              int.parse(listCart[index].priceProduct!) *
                                int.parse(listCart[index].quantity!),
                            ),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      );
    });
  }
}


