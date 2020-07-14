part of openapi.api;

class RequestTimeFilterPostcodeSectorsProperty {
  /// The underlying value of this enum member.
  final String value;

  const RequestTimeFilterPostcodeSectorsProperty._internal(this.value);

  static const RequestTimeFilterPostcodeSectorsProperty travelTimeReachable_ = const RequestTimeFilterPostcodeSectorsProperty._internal("travel_time_reachable");
  static const RequestTimeFilterPostcodeSectorsProperty travelTimeAll_ = const RequestTimeFilterPostcodeSectorsProperty._internal("travel_time_all");
  static const RequestTimeFilterPostcodeSectorsProperty coverage_ = const RequestTimeFilterPostcodeSectorsProperty._internal("coverage");
  
  String toJson (){
    return this.value;
  }

  static RequestTimeFilterPostcodeSectorsProperty fromJson(String value) {
    return new RequestTimeFilterPostcodeSectorsPropertyTypeTransformer().decode(value);
  }
  
  static List<RequestTimeFilterPostcodeSectorsProperty> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterPostcodeSectorsProperty>() : json.map((value) => RequestTimeFilterPostcodeSectorsProperty.fromJson(value)).toList();
  }
}

class RequestTimeFilterPostcodeSectorsPropertyTypeTransformer {

  dynamic encode(RequestTimeFilterPostcodeSectorsProperty data) {
    return data.value;
  }

  RequestTimeFilterPostcodeSectorsProperty decode(dynamic data) {
    switch (data) {
      case "travel_time_reachable": return RequestTimeFilterPostcodeSectorsProperty.travelTimeReachable_;
      case "travel_time_all": return RequestTimeFilterPostcodeSectorsProperty.travelTimeAll_;
      case "coverage": return RequestTimeFilterPostcodeSectorsProperty.coverage_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

