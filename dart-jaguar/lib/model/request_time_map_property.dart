import 'package:jaguar_serializer/jaguar_serializer.dart';



class RequestTimeMapProperty {
  /// The underlying value of this enum member.
  final String value;

  const RequestTimeMapProperty._internal(this.value);

  static const RequestTimeMapProperty isOnlyWalking = const RequestTimeMapProperty._internal('is_only_walking');
}

class RequestTimeMapPropertyFieldProcessor implements FieldProcessor<RequestTimeMapProperty, String> {
    const RequestTimeMapPropertyFieldProcessor();

    RequestTimeMapProperty deserialize(String data) {
        switch (data) {
            case 'is_only_walking': return RequestTimeMapProperty.isOnlyWalking;
            default: throw('Unknown enum value to decode: $data');
        }
    }

    String serialize(RequestTimeMapProperty item) {
        return item.value;
    }
}

