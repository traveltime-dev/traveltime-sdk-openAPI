import 'package:jaguar_serializer/jaguar_serializer.dart';



class RequestArrivalTimePeriod {
  /// The underlying value of this enum member.
  final String value;

  const RequestArrivalTimePeriod._internal(this.value);

  static const RequestArrivalTimePeriod weekdayMorning = const RequestArrivalTimePeriod._internal('weekday_morning');
}

class RequestArrivalTimePeriodFieldProcessor implements FieldProcessor<RequestArrivalTimePeriod, String> {
    const RequestArrivalTimePeriodFieldProcessor();

    RequestArrivalTimePeriod deserialize(String data) {
        switch (data) {
            case 'weekday_morning': return RequestArrivalTimePeriod.weekdayMorning;
            default: throw('Unknown enum value to decode: $data');
        }
    }

    String serialize(RequestArrivalTimePeriod item) {
        return item.value;
    }
}

