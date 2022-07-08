/// data : [{"id_product":"8","name_product":"Motor Matic234","name_category":"skdfkhl ","desc":"sdfsdf","stock":"34","price":"3444444","image":"ctgry1656641679.png","id_category":"11113"}]
/// status : 200
/// response : "Data Ditemukan"

class ListProductResponse {
  ListProductResponse({
      List<Data>? data, 
      int? status, 
      String? response,}){
    _data = data;
    _status = status;
    _response = response;
}

  ListProductResponse.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _status = json['status'];
    _response = json['response'];
  }
  List<Data>? _data;
  int? _status;
  String? _response;
ListProductResponse copyWith({  List<Data>? data,
  int? status,
  String? response,
}) => ListProductResponse(  data: data ?? _data,
  status: status ?? _status,
  response: response ?? _response,
);
  List<Data>? get data => _data;
  int? get status => _status;
  String? get response => _response;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['status'] = _status;
    map['response'] = _response;
    return map;
  }

}

/// id_product : "8"
/// name_product : "Motor Matic234"
/// name_category : "skdfkhl "
/// desc : "sdfsdf"
/// stock : "34"
/// price : "3444444"
/// image : "ctgry1656641679.png"
/// id_category : "11113"

class Data {
  Data({
      String? idProduct, 
      String? nameProduct, 
      String? nameCategory, 
      String? desc, 
      String? stock, 
      String? price, 
      String? image, 
      String? idCategory,}){
    _idProduct = idProduct;
    _nameProduct = nameProduct;
    _nameCategory = nameCategory;
    _desc = desc;
    _stock = stock;
    _price = price;
    _image = image;
    _idCategory = idCategory;
}

  Data.fromJson(dynamic json) {
    _idProduct = json['id_product'];
    _nameProduct = json['name_product'];
    _nameCategory = json['name_category'];
    _desc = json['desc'];
    _stock = json['stock'];
    _price = json['price'];
    _image = json['image'];
    _idCategory = json['id_category'];
  }
  String? _idProduct;
  String? _nameProduct;
  String? _nameCategory;
  String? _desc;
  String? _stock;
  String? _price;
  String? _image;
  String? _idCategory;
Data copyWith({  String? idProduct,
  String? nameProduct,
  String? nameCategory,
  String? desc,
  String? stock,
  String? price,
  String? image,
  String? idCategory,
}) => Data(  idProduct: idProduct ?? _idProduct,
  nameProduct: nameProduct ?? _nameProduct,
  nameCategory: nameCategory ?? _nameCategory,
  desc: desc ?? _desc,
  stock: stock ?? _stock,
  price: price ?? _price,
  image: image ?? _image,
  idCategory: idCategory ?? _idCategory,
);
  String? get idProduct => _idProduct;
  String? get nameProduct => _nameProduct;
  String? get nameCategory => _nameCategory;
  String? get desc => _desc;
  String? get stock => _stock;
  String? get price => _price;
  String? get image => _image;
  String? get idCategory => _idCategory;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id_product'] = _idProduct;
    map['name_product'] = _nameProduct;
    map['name_category'] = _nameCategory;
    map['desc'] = _desc;
    map['stock'] = _stock;
    map['price'] = _price;
    map['image'] = _image;
    map['id_category'] = _idCategory;
    return map;
  }

}