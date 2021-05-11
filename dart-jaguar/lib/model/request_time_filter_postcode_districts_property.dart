import 'package:jaguar_serializer/jaguar_serializer.dart';



class RequestTimeFilterPostcodeDistrictsProperty {
  /// The underlying value of this enum member.
  final String value;

  const RequestTimeFilterPostcodeDistrictsProperty._internal(this.value);

  static const RequestTimeFilterPostcodeDistrictsProperty travelTimeReachable = const RequestTimeFilterPostcodeDistrictsProperty._internal('travel_time_reachable');
  static const RequestTimeFilterPostcodeDistrictsProperty travelTimeAll = const RequestTimeFilterPostcodeDistrictsProperty._internal('travel_time_all');
  static const RequestTimeFilterPostcodeDistrictsProperty coverage = const RequestTimeFilterPostcodeDistrictsProperty._internal('coverage');
}

class RequestTimeFilterPostcodeDistrictsPropertyFieldProcessor implements FieldProcessor<RequestTimeFilterPostcodeDistrictsProperty, String> {
    const RequestTimeFilterPostcodeDistrictsPropertyFieldProcessor();

    RequestTimeFilterPostcodeDistrictsProperty deserialize(String data) {
        switch (data) {
            case 'travel_time_reachable': return RequestTimeFilterPostcodeDistrictsProperty.travelTimeReachable;
            case 'travel_time_all': return RequestTimeFilterPostcodeDistrictsProperty.travelTimeAll;
            case 'coverage': return RequestTimeFilterPostcodeDistrictsProperty.coverage;
            default: throw('Unknown enum value to decode: $data');
        }
    }

    String serialize(RequestTimeFilterPostcodeDistrictsProperty item) {
        return item.value;
    }
}

