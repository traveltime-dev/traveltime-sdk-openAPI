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

  public static RequestTimeFilterFastProperty fromValue(String text) {
    for (RequestTimeFilterFastProperty b : RequestTimeFilterFastProperty.values()) {
      if (String.valueOf(b.value).equals(text)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + text + "'");
  }
  
}

