part of openapi.api;

const _delimiters = const {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};

// port from Java version
Iterable<QueryParam> _convertParametersForCollectionFormat(
  String collectionFormat, String name, dynamic value) {
  var params = <QueryParam>[];

  // preconditions
  if (name == null || name.isEmpty || value == null) return params;

  if (value is! List) {
    params.add(QueryParam(name, parameterToString(value)));
    return params;
  }

  List values = value as List;

  // get the collection format
  collectionFormat = (collectionFormat == null || collectionFormat.isEmpty)
                     ? "csv"
                     : collectionFormat; // default: csv

  if (collectionFormat == "multi") {
    return values.map((v) => QueryParam(name, parameterToString(v)));
  }

  String delimiter = _delimiters[collectionFormat] ?? ",";

  params.add(QueryParam(name, values.map((v) => parameterToString(v)).join(delimiter)));
  return params;
}

/// Format the given parameter object into string.
String parameterToString(dynamic value) {
  if (value == null) {
    return '';
  } else if (value is DateTime) {
    return value.toUtc().toIso8601String();
  } else if (value is RequestArrivalTimePeriod) {
    return RequestArrivalTimePeriodTypeTransformer().encode(value).toString();
  } else if (value is RequestRoutesProperty) {
    return RequestRoutesPropertyTypeTransformer().encode(value).toString();
  } else if (value is RequestTimeFilterFastProperty) {
    return RequestTimeFilterFastPropertyTypeTransformer().encode(value).toString();
  } else if (value is RequestTimeFilterPostcodeDistrictsProperty) {
    return RequestTimeFilterPostcodeDistrictsPropertyTypeTransformer().encode(value).toString();
  } else if (value is RequestTimeFilterPostcodeSectorsProperty) {
    return RequestTimeFilterPostcodeSectorsPropertyTypeTransformer().encode(value).toString();
  } else if (value is RequestTimeFilterPostcodesProperty) {
    return RequestTimeFilterPostcodesPropertyTypeTransformer().encode(value).toString();
  } else if (value is RequestTimeFilterProperty) {
    return RequestTimeFilterPropertyTypeTransformer().encode(value).toString();
  } else if (value is RequestTimeMapProperty) {
    return RequestTimeMapPropertyTypeTransformer().encode(value).toString();
  } else if (value is ResponseTransportationMode) {
    return ResponseTransportationModeTypeTransformer().encode(value).toString();
  } else {
    return value.toString();
  }
}
