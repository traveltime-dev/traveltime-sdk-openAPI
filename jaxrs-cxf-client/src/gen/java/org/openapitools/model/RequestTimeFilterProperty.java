package org.openapitools.model;



/**
 * Gets or Sets RequestTimeFilterProperty
 */
public enum RequestTimeFilterProperty {
  
  TRAVEL_TIME("travel_time"),
  
  DISTANCE("distance"),
  
  DISTANCE_BREAKDOWN("distance_breakdown"),
  
  FARES("fares"),
  
  ROUTE("route");

  private String value;

  RequestTimeFilterProperty(String value) {
    this.value = value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  public static RequestTimeFilterProperty fromValue(String text) {
    for (RequestTimeFilterProperty b : RequestTimeFilterProperty.values()) {
      if (String.valueOf(b.value).equals(text)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + text + "'");
  }
  
}

