package org.openapitools.model;



/**
 * Gets or Sets RequestArrivalTimePeriod
 */
public enum RequestArrivalTimePeriod {
  
  WEEKDAY_MORNING("weekday_morning");

  private String value;

  RequestArrivalTimePeriod(String value) {
    this.value = value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  public static RequestArrivalTimePeriod fromValue(String value) {
    for (RequestArrivalTimePeriod b : RequestArrivalTimePeriod.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }
  
}

