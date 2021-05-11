//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestTimeFilterFastArrivalSearches {
  /// Returns a new [RequestTimeFilterFastArrivalSearches] instance.
  RequestTimeFilterFastArrivalSearches({
    this.manyToOne = const [],
    this.oneToMany = const [],
  });

  List<RequestTimeFilterFastArrivalManyToOneSearch> manyToOne;

  List<RequestTimeFilterFastArrivalOneToManySearch> oneToMany;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestTimeFilterFastArrivalSearches &&
     other.manyToOne == manyToOne &&
     other.oneToMany == oneToMany;

  @override
  int get hashCode =>
    (manyToOne == null ? 0 : manyToOne.hashCode) +
    (oneToMany == null ? 0 : oneToMany.hashCode);

  @override
  String toString() => 'RequestTimeFilterFastArrivalSearches[manyToOne=$manyToOne, oneToMany=$oneToMany]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (manyToOne != null) {
      json[r'many_to_one'] = manyToOne;
    }
    if (oneToMany != null) {
      json[r'one_to_many'] = oneToMany;
    }
    return json;
  }

  /// Returns a new [RequestTimeFilterFastArrivalSearches] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestTimeFilterFastArrivalSearches fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestTimeFilterFastArrivalSearches(
        manyToOne: RequestTimeFilterFastArrivalManyToOneSearch.listFromJson(json[r'many_to_one']),
        oneToMany: RequestTimeFilterFastArrivalOneToManySearch.listFromJson(json[r'one_to_many']),
    );

  static List<RequestTimeFilterFastArrivalSearches> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTimeFilterFastArrivalSearches>[]
      : json.map((v) => RequestTimeFilterFastArrivalSearches.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestTimeFilterFastArrivalSearches> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestTimeFilterFastArrivalSearches>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestTimeFilterFastArrivalSearches.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterFastArrivalSearches-objects as value to a dart map
  static Map<String, List<RequestTimeFilterFastArrivalSearches>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestTimeFilterFastArrivalSearches>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestTimeFilterFastArrivalSearches.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

