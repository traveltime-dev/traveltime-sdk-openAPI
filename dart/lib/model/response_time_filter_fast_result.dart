part of openapi.api;

class ResponseTimeFilterFastResult {
  
  String searchId = null;
  
  List<ResponseTimeFilterFastLocation> locations = [];
  
  List<String> unreachable = [];
  ResponseTimeFilterFastResult();

  @override
  String toString() {
    return 'ResponseTimeFilterFastResult[searchId=$searchId, locations=$locations, unreachable=$unreachable, ]';
  }

  ResponseTimeFilterFastResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    searchId = json['search_id'];
    locations = (json['locations'] == null) ?
      null :
      ResponseTimeFilterFastLocation.listFromJson(json['locations']);
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

  static List<ResponseTimeFilterFastResult> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseTimeFilterFastResult>() : json.map((value) => ResponseTimeFilterFastResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterFastResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeFilterFastResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeFilterFastResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterFastResult-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterFastResult>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeFilterFastResult>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeFilterFastResult.listFromJson(value);
       });
     }
     return map;
  }
}

