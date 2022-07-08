/// data : [{"id_feed":"1","title_feed":"testing qw1","category_feed":"discount","desc_feed":"kashdh","image_feed":"feed1642306013.png","date_feed":"2022-01-16 18:06:00"},{"id_feed":"4","title_feed":"testing 111 ","category_feed":"tes","desc_feed":"ada","image_feed":"feed1645840907.png","date_feed":"2022-02-26 10:01:00"}]
/// status : 200
/// response : "Data Ditemukan"

class ListFeedResponse {
  ListFeedResponse({
      List<Data>? data, 
      int? status, 
      String? response,}){
    _data = data;
    _status = status;
    _response = response;
}

  ListFeedResponse.fromJson(dynamic json) {
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
ListFeedResponse copyWith({  List<Data>? data,
  int? status,
  String? response,
}) => ListFeedResponse(  data: data ?? _data,
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

/// id_feed : "1"
/// title_feed : "testing qw1"
/// category_feed : "discount"
/// desc_feed : "kashdh"
/// image_feed : "feed1642306013.png"
/// date_feed : "2022-01-16 18:06:00"

class Data {
  Data({
      String? idFeed, 
      String? titleFeed, 
      String? categoryFeed, 
      String? descFeed, 
      String? imageFeed, 
      String? dateFeed,}){
    _idFeed = idFeed;
    _titleFeed = titleFeed;
    _categoryFeed = categoryFeed;
    _descFeed = descFeed;
    _imageFeed = imageFeed;
    _dateFeed = dateFeed;
}

  Data.fromJson(dynamic json) {
    _idFeed = json['id_feed'];
    _titleFeed = json['title_feed'];
    _categoryFeed = json['category_feed'];
    _descFeed = json['desc_feed'];
    _imageFeed = json['image_feed'];
    _dateFeed = json['date_feed'];
  }
  String? _idFeed;
  String? _titleFeed;
  String? _categoryFeed;
  String? _descFeed;
  String? _imageFeed;
  String? _dateFeed;
Data copyWith({  String? idFeed,
  String? titleFeed,
  String? categoryFeed,
  String? descFeed,
  String? imageFeed,
  String? dateFeed,
}) => Data(  idFeed: idFeed ?? _idFeed,
  titleFeed: titleFeed ?? _titleFeed,
  categoryFeed: categoryFeed ?? _categoryFeed,
  descFeed: descFeed ?? _descFeed,
  imageFeed: imageFeed ?? _imageFeed,
  dateFeed: dateFeed ?? _dateFeed,
);
  String? get idFeed => _idFeed;
  String? get titleFeed => _titleFeed;
  String? get categoryFeed => _categoryFeed;
  String? get descFeed => _descFeed;
  String? get imageFeed => _imageFeed;
  String? get dateFeed => _dateFeed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id_feed'] = _idFeed;
    map['title_feed'] = _titleFeed;
    map['category_feed'] = _categoryFeed;
    map['desc_feed'] = _descFeed;
    map['image_feed'] = _imageFeed;
    map['date_feed'] = _dateFeed;
    return map;
  }

}