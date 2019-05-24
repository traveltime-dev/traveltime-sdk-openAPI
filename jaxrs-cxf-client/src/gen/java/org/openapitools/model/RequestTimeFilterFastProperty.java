package org.openapitools.model;



/**
 * Gets or Sets RequestTimeFilterFastProperty
 */
public enum RequestTimeFilterFastProperty {
  
  TRAVEL_TIME("travel_time"),
  
  FARES("fares");

  private String value;

  RequestTimeFilterFastProperty(String value) {
    this.value = value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  public static RequestTimeFilterFastProperty fromValue(String value) {
    for (RequestTimeFilterFastProperty b : RequestTimeFilterFastProperty.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }
  
}

