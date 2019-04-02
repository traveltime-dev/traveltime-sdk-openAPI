part of openapi.api;

@Entity()
class RequestTimeFilterFastProperty {
  /// The underlying value of this enum member.
  final String value;

  const RequestTimeFilterFastProperty._internal(this.value);

  static const RequestTimeFilterFastProperty travelTime_ = const RequestTimeFilterFastProperty._internal("travel_time");
  static const RequestTimeFilterFastProperty fares_ = const RequestTimeFilterFastProperty._internal("fares");
}

class RequestTimeFilterFastPropertyTypeTransformer extends TypeTransformer<RequestTimeFilterFastProperty> {

  @override
  dynamic encode(RequestTimeFilterFastProperty data) {
    return data.value;
  }

  @override
  RequestTimeFilterFastProperty decode(dynamic data) {
    switch (data) {
      case "travel_time": return RequestTimeFilterFastProperty.travelTime_;
      case "fares": return RequestTimeFilterFastProperty.fares_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

