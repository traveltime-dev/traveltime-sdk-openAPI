part of openapi.api;

class RequestTimeFilterFastProperty {
  /// The underlying value of this enum member.
  final String value;

  const RequestTimeFilterFastProperty._internal(this.value);

  static const RequestTimeFilterFastProperty travelTime_ = const RequestTimeFilterFastProperty._internal("travel_time");
  static const RequestTimeFilterFastProperty fares_ = const RequestTimeFilterFastProperty._internal("fares");
  
  String toJson (){
    return this.value;
  }

  static RequestTimeFilterFastProperty fromJson(String value) {
    return new RequestTimeFilterFastPropertyTypeTransformer().decode(value);
  }
  
  static List<RequestTimeFilterFastProperty> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterFastProperty>() : json.map((value) => RequestTimeFilterFastProperty.fromJson(value)).toList();
  }
}

class RequestTimeFilterFastPropertyTypeTransformer {

  dynamic encode(RequestTimeFilterFastProperty data) {
    return data.value;
  }

  RequestTimeFilterFastProperty decode(dynamic data) {
    switch (data) {
      case "travel_time": return RequestTimeFilterFastProperty.travelTime_;
      case "fares": return RequestTimeFilterFastProperty.fares_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

