part of openapi.api;

@Entity()
class ResponseTransportationMode {
  /// The underlying value of this enum member.
  final String value;

  const ResponseTransportationMode._internal(this.value);

  static const ResponseTransportationMode car_ = const ResponseTransportationMode._internal("car");
  static const ResponseTransportationMode parking_ = const ResponseTransportationMode._internal("parking");
  static const ResponseTransportationMode boarding_ = const ResponseTransportationMode._internal("boarding");
  static const ResponseTransportationMode walk_ = const ResponseTransportationMode._internal("walk");
  static const ResponseTransportationMode bike_ = const ResponseTransportationMode._internal("bike");
  static const ResponseTransportationMode train_ = const ResponseTransportationMode._internal("train");
  static const ResponseTransportationMode railNational_ = const ResponseTransportationMode._internal("rail_national");
  static const ResponseTransportationMode railOverground_ = const ResponseTransportationMode._internal("rail_overground");
  static const ResponseTransportationMode railUnderground_ = const ResponseTransportationMode._internal("rail_underground");
  static const ResponseTransportationMode railDlr_ = const ResponseTransportationMode._internal("rail_dlr");
  static const ResponseTransportationMode bus_ = const ResponseTransportationMode._internal("bus");
  static const ResponseTransportationMode cableCar_ = const ResponseTransportationMode._internal("cable_car");
  static const ResponseTransportationMode plane_ = const ResponseTransportationMode._internal("plane");
  static const ResponseTransportationMode ferry_ = const ResponseTransportationMode._internal("ferry");
  static const ResponseTransportationMode coach_ = const ResponseTransportationMode._internal("coach");
}

class ResponseTransportationModeTypeTransformer extends TypeTransformer<ResponseTransportationMode> {

  @override
  dynamic encode(ResponseTransportationMode data) {
    return data.value;
  }

  @override
  ResponseTransportationMode decode(dynamic data) {
    switch (data) {
      case "car": return ResponseTransportationMode.car_;
      case "parking": return ResponseTransportationMode.parking_;
      case "boarding": return ResponseTransportationMode.boarding_;
      case "walk": return ResponseTransportationMode.walk_;
      case "bike": return ResponseTransportationMode.bike_;
      case "train": return ResponseTransportationMode.train_;
      case "rail_national": return ResponseTransportationMode.railNational_;
      case "rail_overground": return ResponseTransportationMode.railOverground_;
      case "rail_underground": return ResponseTransportationMode.railUnderground_;
      case "rail_dlr": return ResponseTransportationMode.railDlr_;
      case "bus": return ResponseTransportationMode.bus_;
      case "cable_car": return ResponseTransportationMode.cableCar_;
      case "plane": return ResponseTransportationMode.plane_;
      case "ferry": return ResponseTransportationMode.ferry_;
      case "coach": return ResponseTransportationMode.coach_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

