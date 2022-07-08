/// data : [{"id_carousel":"2","image_carousel":"http://localhost/webservice_tokolauwba_ci/image/carousel1648030110.png"},{"id_carousel":"3","image_carousel":"http://localhost/webservice_tokolauwba_ci/image/carousel1648176845.png"},{"id_carousel":"4","image_carousel":"http://localhost/webservice_tokolauwba_ci/image/carousel1648176851.png"}]
/// status : 200
/// response : "data tidak ditemukan"

class ListCarouselResponse {
  ListCarouselResponse({
      List<Data>? data, 
      int? status, 
      String? response,}){
    _data = data;
    _status = status;
    _response = response;
}

  ListCarouselResponse.fromJson(dynamic json) {
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

/// id_carousel : "2"
/// image_carousel : "http://localhost/webservice_tokolauwba_ci/image/carousel1648030110.png"

class Data {
  Data({
      String? idCarousel, 
      String? imageCarousel,}){
    _idCarousel = idCarousel;
    _imageCarousel = imageCarousel;
}

  Data.fromJson(dynamic json) {
    _idCarousel = json['id_carousel'];
    _imageCarousel = json['image_carousel'];
  }
  String? _idCarousel;
  String? _imageCarousel;

  String? get idCarousel => _idCarousel;
  String? get imageCarousel => _imageCarousel;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id_carousel'] = _idCarousel;
    map['image_carousel'] = _imageCarousel;
    return map;
  }

}