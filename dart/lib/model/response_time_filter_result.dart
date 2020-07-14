part of openapi.api;

class ResponseTimeFilterResult {
  
  String searchId = null;
  
  List<ResponseTimeFilterLocation> locations = [];
  
  List<String> unreachable = [];

  ResponseTimeFilterResult({
    this.searchId,
    this.locations,
    this.unreachable,
  });

  @override
  String toString() {
    return 'ResponseTimeFilterResult[searchId=$searchId, locations=$locations, unreachable=$unreachable, ]';
  }

  ResponseTimeFilterResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    searchId = json['search_id'];
    locations = (json['locations'] == null) ?
      null :
      ResponseTimeFilterLocation.listFromJson(json['locations']);
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

  static List<ResponseTimeFilterResult> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseTimeFilterResult>() : json.map((value) => ResponseTimeFilterResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeFilterResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeFilterResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterResult-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterResult>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeFilterResult>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeFilterResult.listFromJson(value);
       });
     }
     return map;
  }
}

