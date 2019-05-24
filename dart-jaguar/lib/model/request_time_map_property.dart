import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'request_time_map_property.jser.dart';

@Entity()
class RequestTimeMapProperty {
  /// The underlying value of this enum member.
  final String value;

  const RequestTimeMapProperty._internal(this.value);

  static const RequestTimeMapProperty isOnlyWalking_} = const RequestTimeMapProperty._internal("is_only_walking");
}

class RequestTimeMapPropertyTypeTransformer extends TypeTransformer<RequestTimeMapProperty> {

  @override
  dynamic encode(RequestTimeMapProperty data) {
    return data.value;
  }

  @override
  RequestTimeMapProperty decode(dynamic data) {
    switch (data) {
      case "is_only_walking": return RequestTimeMapProperty.isOnlyWalking_};
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

