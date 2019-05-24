package org.openapitools.model;



/**
 * Gets or Sets RequestRoutesProperty
 */
public enum RequestRoutesProperty {
  
  TRAVEL_TIME("travel_time"),
  
  DISTANCE("distance"),
  
  FARES("fares"),
  
  ROUTE("route");

  private String value;

  RequestRoutesProperty(String value) {
    this.value = value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  public static RequestRoutesProperty fromValue(String value) {
    for (RequestRoutesProperty b : RequestRoutesProperty.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }
  
}

