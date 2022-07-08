/// data : [{"id_category":"11112","name_category":"skdfkhl 676 123","desc_category":"  s.dnfdjl","image_category":"ctgry1641197288.png"},{"id_category":"11113","name_category":"skdfkhl","desc_category":"afa","image_category":"ctgry1641542689.png"}]
/// status : 200
/// response : "Data Ditemukan"

class ListCategoryResponse {
  ListCategoryResponse({
      List<Data>? data, 
      int? status, 
      String? response,}){
    _data = data;
    _status = status;
    _response = response;
}

  ListCategoryResponse.fromJson(dynamic json) {
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

/// id_category : "11112"
/// name_category : "skdfkhl 676 123"
/// desc_category : "  s.dnfdjl"
/// image_category : "ctgry1641197288.png"

class Data {
  Data({
      String? idCategory, 
      String? nameCategory, 
      String? descCategory, 
      String? imageCategory,}){
    _idCategory = idCategory;
    _nameCategory = nameCategory;
    _descCategory = descCategory;
    _imageCategory = imageCategory;
}

  Data.fromJson(dynamic json) {
    _idCategory = json['id_category'];
    _nameCategory = json['name_category'];
    _descCategory = json['desc_category'];
    _imageCategory = json['image_category'];
  }
  String? _idCategory;
  String? _nameCategory;
  String? _descCategory;
  String? _imageCategory;

  String? get idCategory => _idCategory;
  String? get nameCategory => _nameCategory;
  String? get descCategory => _descCategory;
  String? get imageCategory => _imageCategory;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id_category'] = _idCategory;
    map['name_category'] = _nameCategory;
    map['desc_category'] = _descCategory;
    map['image_category'] = _imageCategory;
    return map;
  }

}