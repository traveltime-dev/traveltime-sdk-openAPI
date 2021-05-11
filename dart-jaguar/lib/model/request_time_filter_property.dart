import 'package:jaguar_serializer/jaguar_serializer.dart';



class RequestTimeFilterProperty {
  /// The underlying value of this enum member.
  final String value;

  const RequestTimeFilterProperty._internal(this.value);

  static const RequestTimeFilterProperty travelTime = const RequestTimeFilterProperty._internal('travel_time');
  static const RequestTimeFilterProperty distance = const RequestTimeFilterProperty._internal('distance');
  static const RequestTimeFilterProperty distanceBreakdown = const RequestTimeFilterProperty._internal('distance_breakdown');
  static const RequestTimeFilterProperty fares = const RequestTimeFilterProperty._internal('fares');
  static const RequestTimeFilterProperty route = const RequestTimeFilterProperty._internal('route');
}

class RequestTimeFilterPropertyFieldProcessor implements FieldProcessor<RequestTimeFilterProperty, String> {
    const RequestTimeFilterPropertyFieldProcessor();

    RequestTimeFilterProperty deserialize(String data) {
        switch (data) {
            case 'travel_time': return RequestTimeFilterProperty.travelTime;
            case 'distance': return RequestTimeFilterProperty.distance;
            case 'distance_breakdown': return RequestTimeFilterProperty.distanceBreakdown;
            case 'fares': return RequestTimeFilterProperty.fares;
            case 'route': return RequestTimeFilterProperty.route;
            default: throw('Unknown enum value to decode: $data');
        }
    }

    String serialize(RequestTimeFilterProperty item) {
        return item.value;
    }
}

