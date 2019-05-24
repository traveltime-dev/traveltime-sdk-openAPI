import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'request_time_filter_postcode_sectors_property.jser.dart';

@Entity()
class RequestTimeFilterPostcodeSectorsProperty {
  /// The underlying value of this enum member.
  final String value;

  const RequestTimeFilterPostcodeSectorsProperty._internal(this.value);

  static const RequestTimeFilterPostcodeSectorsProperty travelTimeReachable_} = const RequestTimeFilterPostcodeSectorsProperty._internal("travel_time_reachable");
  static const RequestTimeFilterPostcodeSectorsProperty travelTimeAll_} = const RequestTimeFilterPostcodeSectorsProperty._internal("travel_time_all");
  static const RequestTimeFilterPostcodeSectorsProperty coverage_} = const RequestTimeFilterPostcodeSectorsProperty._internal("coverage");
}

class RequestTimeFilterPostcodeSectorsPropertyTypeTransformer extends TypeTransformer<RequestTimeFilterPostcodeSectorsProperty> {

  @override
  dynamic encode(RequestTimeFilterPostcodeSectorsProperty data) {
    return data.value;
  }

  @override
  RequestTimeFilterPostcodeSectorsProperty decode(dynamic data) {
    switch (data) {
      case "travel_time_reachable": return RequestTimeFilterPostcodeSectorsProperty.travelTimeReachable_};
      case "travel_time_all": return RequestTimeFilterPostcodeSectorsProperty.travelTimeAll_};
      case "coverage": return RequestTimeFilterPostcodeSectorsProperty.coverage_};
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

