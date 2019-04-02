part of openapi.api;

@Entity()
class RequestTimeFilterPostcodesProperty {
  /// The underlying value of this enum member.
  final String value;

  const RequestTimeFilterPostcodesProperty._internal(this.value);

  static const RequestTimeFilterPostcodesProperty travelTime_ = const RequestTimeFilterPostcodesProperty._internal("travel_time");
  static const RequestTimeFilterPostcodesProperty distance_ = const RequestTimeFilterPostcodesProperty._internal("distance");
}

class RequestTimeFilterPostcodesPropertyTypeTransformer extends TypeTransformer<RequestTimeFilterPostcodesProperty> {

  @override
  dynamic encode(RequestTimeFilterPostcodesProperty data) {
    return data.value;
  }

  @override
  RequestTimeFilterPostcodesProperty decode(dynamic data) {
    switch (data) {
      case "travel_time": return RequestTimeFilterPostcodesProperty.travelTime_;
      case "distance": return RequestTimeFilterPostcodesProperty.distance_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

