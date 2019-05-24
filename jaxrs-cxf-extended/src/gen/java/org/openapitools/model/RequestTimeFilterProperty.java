package org.openapitools.model;

import javax.validation.constraints.*;
import javax.validation.Valid;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;

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
  @JsonValue
  public String toString() {
    return String.valueOf(value);
  }

  @JsonCreator
  public static RequestTimeFilterProperty fromValue(String value) {
    for (RequestTimeFilterProperty b : RequestTimeFilterProperty.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }
  
}

