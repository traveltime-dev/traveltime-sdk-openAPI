part of openapi.api;

class RequestTimeFilterProperty {
  /// The underlying value of this enum member.
  final String value;

  const RequestTimeFilterProperty._internal(this.value);

  static const RequestTimeFilterProperty travelTime_ = const RequestTimeFilterProperty._internal("travel_time");
  static const RequestTimeFilterProperty distance_ = const RequestTimeFilterProperty._internal("distance");
  static const RequestTimeFilterProperty distanceBreakdown_ = const RequestTimeFilterProperty._internal("distance_breakdown");
  static const RequestTimeFilterProperty fares_ = const RequestTimeFilterProperty._internal("fares");
  static const RequestTimeFilterProperty route_ = const RequestTimeFilterProperty._internal("route");
  
  String toJson (){
    return this.value;
  }

  static RequestTimeFilterProperty fromJson(String value) {
    return new RequestTimeFilterPropertyTypeTransformer().decode(value);
  }
  
  static List<RequestTimeFilterProperty> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterProperty>() : json.map((value) => RequestTimeFilterProperty.fromJson(value)).toList();
  }
}

class RequestTimeFilterPropertyTypeTransformer {

  dynamic encode(RequestTimeFilterProperty data) {
    return data.value;
  }

  RequestTimeFilterProperty decode(dynamic data) {
    switch (data) {
      case "travel_time": return RequestTimeFilterProperty.travelTime_;
      case "distance": return RequestTimeFilterProperty.distance_;
      case "distance_breakdown": return RequestTimeFilterProperty.distanceBreakdown_;
      case "fares": return RequestTimeFilterProperty.fares_;
      case "route": return RequestTimeFilterProperty.route_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

