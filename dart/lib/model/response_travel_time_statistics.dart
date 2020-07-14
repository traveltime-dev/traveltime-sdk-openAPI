part of openapi.api;

class ResponseTravelTimeStatistics {
  
  int min = null;
  
  int max = null;
  
  int mean = null;
  
  int median = null;

  ResponseTravelTimeStatistics({
    this.min,
    this.max,
    this.mean,
    this.median,
  });

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
    return json == null ? List<ResponseTravelTimeStatistics>() : json.map((value) => ResponseTravelTimeStatistics.fromJson(value)).toList();
  }

  static Map<String, ResponseTravelTimeStatistics> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTravelTimeStatistics>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTravelTimeStatistics.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTravelTimeStatistics-objects as value to a dart map
  static Map<String, List<ResponseTravelTimeStatistics>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTravelTimeStatistics>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTravelTimeStatistics.listFromJson(value);
       });
     }
     return map;
  }
}

