part of openapi.api;

class ResponseTimeFilterResult {
  
  String searchId = null;
  
  List<ResponseTimeFilterLocation> locations = [];
  
  List<String> unreachable = [];
  ResponseTimeFilterResult();

  @override
  String toString() {
    return 'ResponseTimeFilterResult[searchId=$searchId, locations=$locations, unreachable=$unreachable, ]';
  }

  ResponseTimeFilterResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['search_id'] == null) {
      searchId = null;
    } else {
          searchId = json['search_id'];
    }
    if (json['locations'] == null) {
      locations = null;
    } else {
      locations = ResponseTimeFilterLocation.listFromJson(json['locations']);
    }
    if (json['unreachable'] == null) {
      unreachable = null;
    } else {
      unreachable = (json['unreachable'] as List).cast<String>();
    }
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
    return json == null ? new List<ResponseTimeFilterResult>() : json.map((value) => new ResponseTimeFilterResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterResult> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterResult.fromJson(value));
    }
    return map;
  }
}

