/// result : [{"id_cart":"207","id_product":"28","name_product":"Vario techno 2012","price_product":"600000","image_product":"http://localhost/WEB_AGUS/webservices_tokolauwba_flutter/image/prdct1607921324.png","name_category":"Motor Bekas Matic murah","quantity":"5"},{"id_cart":"208","id_product":"27","name_product":"Beat 2009","price_product":"400000","image_product":"http://localhost/WEB_AGUS/webservices_tokolauwba_flutter/image/prdct1607920554.png","name_category":"Motor Bekas Matic murah","quantity":"10"}]

class CartResponse {
  CartResponse({
      List<Result>? result,}){
    _result = result;
}

  CartResponse.fromJson(dynamic json) {
    if (json['result'] != null) {
      _result = [];
      json['result'].forEach((v) {
        _result?.add(Result.fromJson(v));
      });
    }
  }
  List<Result>? _result;
CartResponse copyWith({  List<Result>? result,
}) => CartResponse(  result: result ?? _result,
);
  List<Result>? get result => _result;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_result != null) {
      map['result'] = _result?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id_cart : "207"
/// id_product : "28"
/// name_product : "Vario techno 2012"
/// price_product : "600000"
/// image_product : "http://localhost/WEB_AGUS/webservices_tokolauwba_flutter/image/prdct1607921324.png"
/// name_category : "Motor Bekas Matic murah"
/// quantity : "5"

class Result {
  Result({
      String? idCart, 
      String? idProduct, 
      String? nameProduct, 
      String? priceProduct, 
      String? imageProduct, 
      String? nameCategory, 
      String? quantity,}){
    _idCart = idCart;
    _idProduct = idProduct;
    _nameProduct = nameProduct;
    _priceProduct = priceProduct;
    _imageProduct = imageProduct;
    _nameCategory = nameCategory;
    _quantity = quantity;
}

  Result.fromJson(dynamic json) {
    _idCart = json['id_cart'];
    _idProduct = json['id_product'];
    _nameProduct = json['name_product'];
    _priceProduct = json['price_product'];
    _imageProduct = json['image_product'];
    _nameCategory = json['name_category'];
    _quantity = json['quantity'];
  }
  String? _idCart;
  String? _idProduct;
  String? _nameProduct;
  String? _priceProduct;
  String? _imageProduct;
  String? _nameCategory;
  String? _quantity;
Result copyWith({  String? idCart,
  String? idProduct,
  String? nameProduct,
  String? priceProduct,
  String? imageProduct,
  String? nameCategory,
  String? quantity,
}) => Result(  idCart: idCart ?? _idCart,
  idProduct: idProduct ?? _idProduct,
  nameProduct: nameProduct ?? _nameProduct,
  priceProduct: priceProduct ?? _priceProduct,
  imageProduct: imageProduct ?? _imageProduct,
  nameCategory: nameCategory ?? _nameCategory,
  quantity: quantity ?? _quantity,
);
  String? get idCart => _idCart;
  String? get idProduct => _idProduct;
  String? get nameProduct => _nameProduct;
  String? get priceProduct => _priceProduct;
  String? get imageProduct => _imageProduct;
  String? get nameCategory => _nameCategory;
  String? get quantity => _quantity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id_cart'] = _idCart;
    map['id_product'] = _idProduct;
    map['name_product'] = _nameProduct;
    map['price_product'] = _priceProduct;
    map['image_product'] = _imageProduct;
    map['name_category'] = _nameCategory;
    map['quantity'] = _quantity;
    return map;
  }

}