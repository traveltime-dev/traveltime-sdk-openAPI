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
    if (json['search_id'] == null) {
      searchId = null;
    } else {
          searchId = json['search_id'];
    }
    if (json['locations'] == null) {
      locations = null;
    } else {
      locations = ResponseTimeFilterFastLocation.listFromJson(json['locations']);
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

  static List<ResponseTimeFilterFastResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterFastResult>() : json.map((value) => new ResponseTimeFilterFastResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterFastResult> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterFastResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterFastResult.fromJson(value));
    }
    return map;
  }
}

