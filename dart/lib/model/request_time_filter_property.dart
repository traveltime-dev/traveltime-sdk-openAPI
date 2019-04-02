part of openapi.api;

@Entity()
class RequestTimeFilterProperty {
  /// The underlying value of this enum member.
  final String value;

  const RequestTimeFilterProperty._internal(this.value);

  static const RequestTimeFilterProperty travelTime_ = const RequestTimeFilterProperty._internal("travel_time");
  static const RequestTimeFilterProperty distance_ = const RequestTimeFilterProperty._internal("distance");
  static const RequestTimeFilterProperty distanceBreakdown_ = const RequestTimeFilterProperty._internal("distance_breakdown");
  static const RequestTimeFilterProperty fares_ = const RequestTimeFilterProperty._internal("fares");
  static const RequestTimeFilterProperty route_ = const RequestTimeFilterProperty._internal("route");
}

class RequestTimeFilterPropertyTypeTransformer extends TypeTransformer<RequestTimeFilterProperty> {

  @override
  dynamic encode(RequestTimeFilterProperty data) {
    return data.value;
  }

  @override
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

