import 'package:jaguar_serializer/jaguar_serializer.dart';



class ResponseTransportationMode {
  /// The underlying value of this enum member.
  final String value;

  const ResponseTransportationMode._internal(this.value);

  static const ResponseTransportationMode car = const ResponseTransportationMode._internal('car');
  static const ResponseTransportationMode parking = const ResponseTransportationMode._internal('parking');
  static const ResponseTransportationMode boarding = const ResponseTransportationMode._internal('boarding');
  static const ResponseTransportationMode walk = const ResponseTransportationMode._internal('walk');
  static const ResponseTransportationMode bike = const ResponseTransportationMode._internal('bike');
  static const ResponseTransportationMode train = const ResponseTransportationMode._internal('train');
  static const ResponseTransportationMode railNational = const ResponseTransportationMode._internal('rail_national');
  static const ResponseTransportationMode railOverground = const ResponseTransportationMode._internal('rail_overground');
  static const ResponseTransportationMode railUnderground = const ResponseTransportationMode._internal('rail_underground');
  static const ResponseTransportationMode railDlr = const ResponseTransportationMode._internal('rail_dlr');
  static const ResponseTransportationMode bus = const ResponseTransportationMode._internal('bus');
  static const ResponseTransportationMode cableCar = const ResponseTransportationMode._internal('cable_car');
  static const ResponseTransportationMode plane = const ResponseTransportationMode._internal('plane');
  static const ResponseTransportationMode ferry = const ResponseTransportationMode._internal('ferry');
  static const ResponseTransportationMode coach = const ResponseTransportationMode._internal('coach');
}

class ResponseTransportationModeFieldProcessor implements FieldProcessor<ResponseTransportationMode, String> {
    const ResponseTransportationModeFieldProcessor();

    ResponseTransportationMode deserialize(String data) {
        switch (data) {
            case 'car': return ResponseTransportationMode.car;
            case 'parking': return ResponseTransportationMode.parking;
            case 'boarding': return ResponseTransportationMode.boarding;
            case 'walk': return ResponseTransportationMode.walk;
            case 'bike': return ResponseTransportationMode.bike;
            case 'train': return ResponseTransportationMode.train;
            case 'rail_national': return ResponseTransportationMode.railNational;
            case 'rail_overground': return ResponseTransportationMode.railOverground;
            case 'rail_underground': return ResponseTransportationMode.railUnderground;
            case 'rail_dlr': return ResponseTransportationMode.railDlr;
            case 'bus': return ResponseTransportationMode.bus;
            case 'cable_car': return ResponseTransportationMode.cableCar;
            case 'plane': return ResponseTransportationMode.plane;
            case 'ferry': return ResponseTransportationMode.ferry;
            case 'coach': return ResponseTransportationMode.coach;
            default: throw('Unknown enum value to decode: $data');
        }
    }

    String serialize(ResponseTransportationMode item) {
        return item.value;
    }
}

