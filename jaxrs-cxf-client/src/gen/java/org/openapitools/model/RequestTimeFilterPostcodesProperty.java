package org.openapitools.model;



/**
 * Gets or Sets RequestTimeFilterPostcodesProperty
 */
public enum RequestTimeFilterPostcodesProperty {
  
  TRAVEL_TIME("travel_time"),
  
  DISTANCE("distance");

  private String value;

  RequestTimeFilterPostcodesProperty(String value) {
    this.value = value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  public static RequestTimeFilterPostcodesProperty fromValue(String value) {
    for (RequestTimeFilterPostcodesProperty b : RequestTimeFilterPostcodesProperty.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }
  
}

