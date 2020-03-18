part of openapi.api;

class ResponseRoutesResult {
  
  String searchId = null;
  
  List<ResponseRoutesLocation> locations = [];
  
  List<String> unreachable = [];
  ResponseRoutesResult();

  @override
  String toString() {
    return 'ResponseRoutesResult[searchId=$searchId, locations=$locations, unreachable=$unreachable, ]';
  }

  ResponseRoutesResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    searchId = json['search_id'];
    locations = (json['locations'] == null) ?
      null :
      ResponseRoutesLocation.listFromJson(json['locations']);
    unreachable = (json['unreachable'] == null) ?
      null :
      (json['unreachable'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (searchId != null)
      json['search_id'] = searchId;
    if (locations != null)
      json['locations'] = locations;
    if (unreachable != null)
      json['unreachable'] = unreachable;
    return json;
  }

  static List<ResponseRoutesResult> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseRoutesResult>() : json.map((value) => ResponseRoutesResult.fromJson(value)).toList();
  }

  static Map<String, ResponseRoutesResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseRoutesResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseRoutesResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseRoutesResult-objects as value to a dart map
  static Map<String, List<ResponseRoutesResult>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseRoutesResult>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseRoutesResult.listFromJson(value);
       });
     }
     return map;
  }
}

