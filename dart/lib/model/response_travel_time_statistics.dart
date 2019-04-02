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
    min = json['min'];
    max = json['max'];
    mean = json['mean'];
    median = json['median'];
  }

  Map<String, dynamic> toJson() {
    return {
      'min': min,
      'max': max,
      'mean': mean,
      'median': median
    };
  }

  static List<ResponseTravelTimeStatistics> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTravelTimeStatistics>() : json.map((value) => new ResponseTravelTimeStatistics.fromJson(value)).toList();
  }

  static Map<String, ResponseTravelTimeStatistics> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTravelTimeStatistics>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTravelTimeStatistics.fromJson(value));
    }
    return map;
  }
}

