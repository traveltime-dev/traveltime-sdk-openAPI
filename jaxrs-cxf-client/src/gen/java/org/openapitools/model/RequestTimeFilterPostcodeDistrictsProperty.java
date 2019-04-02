package org.openapitools.model;



/**
 * Gets or Sets RequestTimeFilterPostcodeDistrictsProperty
 */
public enum RequestTimeFilterPostcodeDistrictsProperty {
  
  TRAVEL_TIME_REACHABLE("travel_time_reachable"),
  
  TRAVEL_TIME_ALL("travel_time_all"),
  
  COVERAGE("coverage");

  private String value;

  RequestTimeFilterPostcodeDistrictsProperty(String value) {
    this.value = value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  public static RequestTimeFilterPostcodeDistrictsProperty fromValue(String text) {
    for (RequestTimeFilterPostcodeDistrictsProperty b : RequestTimeFilterPostcodeDistrictsProperty.values()) {
      if (String.valueOf(b.value).equals(text)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + text + "'");
  }
  
}

