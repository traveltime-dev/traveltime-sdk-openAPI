part of openapi.api;

class ResponseTimeFilterPostcodeSectorsResult {
  
  String searchId = null;
  
  List<ResponseTimeFilterPostcodeSector> sectors = [];

  ResponseTimeFilterPostcodeSectorsResult({
    this.searchId,
    this.sectors,
  });

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodeSectorsResult[searchId=$searchId, sectors=$sectors, ]';
  }

  ResponseTimeFilterPostcodeSectorsResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    searchId = json['search_id'];
    sectors = (json['sectors'] == null) ?
      null :
      ResponseTimeFilterPostcodeSector.listFromJson(json['sectors']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (searchId != null)
      json['search_id'] = searchId;
    if (sectors != null)
      json['sectors'] = sectors;
    return json;
  }

  static List<ResponseTimeFilterPostcodeSectorsResult> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseTimeFilterPostcodeSectorsResult>() : json.map((value) => ResponseTimeFilterPostcodeSectorsResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeSectorsResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeFilterPostcodeSectorsResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeFilterPostcodeSectorsResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcodeSectorsResult-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcodeSectorsResult>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeFilterPostcodeSectorsResult>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeFilterPostcodeSectorsResult.listFromJson(value);
       });
     }
     return map;
  }
}

