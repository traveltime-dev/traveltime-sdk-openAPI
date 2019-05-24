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
    if (json['search_id'] == null) {
      searchId = null;
    } else {
          searchId = json['search_id'];
    }
    if (json['locations'] == null) {
      locations = null;
    } else {
      locations = ResponseRoutesLocation.listFromJson(json['locations']);
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

  static List<ResponseRoutesResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseRoutesResult>() : json.map((value) => new ResponseRoutesResult.fromJson(value)).toList();
  }

  static Map<String, ResponseRoutesResult> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseRoutesResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseRoutesResult.fromJson(value));
    }
    return map;
  }
}

