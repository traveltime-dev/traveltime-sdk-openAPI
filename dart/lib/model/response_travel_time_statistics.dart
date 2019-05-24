part of openapi.api;

class ResponseTravelTimeStatistics {
  
  int min = null;
  
  int max = null;
  
  int mean = null;
  
  int median = null;
  ResponseTravelTimeStatistics();

  @override
  String toString() {
    return 'ResponseTravelTimeStatistics[min=$min, max=$max, mean=$mean, median=$median, ]';
  }

  ResponseTravelTimeStatistics.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['min'] == null) {
      min = null;
    } else {
          min = json['min'];
    }
    if (json['max'] == null) {
      max = null;
    } else {
          max = json['max'];
    }
    if (json['mean'] == null) {
      mean = null;
    } else {
          mean = json['mean'];
    }
    if (json['median'] == null) {
      median = null;
    } else {
          median = json['median'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (min != null)
      json['min'] = min;
    if (max != null)
      json['max'] = max;
    if (mean != null)
      json['mean'] = mean;
    if (median != null)
      json['median'] = median;
    return json;
  }

  static List<ResponseTravelTimeStatistics> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTravelTimeStatistics>() : json.map((value) => new ResponseTravelTimeStatistics.fromJson(value)).toList();
  }

  static Map<String, ResponseTravelTimeStatistics> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTravelTimeStatistics>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTravelTimeStatistics.fromJson(value));
    }
    return map;
  }
}

