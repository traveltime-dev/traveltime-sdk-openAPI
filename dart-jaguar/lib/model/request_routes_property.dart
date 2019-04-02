import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'request_routes_property.jser.dart';

@Entity()
class RequestRoutesProperty {
  /// The underlying value of this enum member.
  final String value;

  const RequestRoutesProperty._internal(this.value);

  static const RequestRoutesProperty travelTime_} = const RequestRoutesProperty._internal("travel_time");
  static const RequestRoutesProperty distance_} = const RequestRoutesProperty._internal("distance");
  static const RequestRoutesProperty fares_} = const RequestRoutesProperty._internal("fares");
  static const RequestRoutesProperty route_} = const RequestRoutesProperty._internal("route");
}

class RequestRoutesPropertyTypeTransformer extends TypeTransformer<RequestRoutesProperty> {

  @override
  dynamic encode(RequestRoutesProperty data) {
    return data.value;
  }

  @override
  RequestRoutesProperty decode(dynamic data) {
    switch (data) {
      case "travel_time": return RequestRoutesProperty.travelTime_};
      case "distance": return RequestRoutesProperty.distance_};
      case "fares": return RequestRoutesProperty.fares_};
      case "route": return RequestRoutesProperty.route_};
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

