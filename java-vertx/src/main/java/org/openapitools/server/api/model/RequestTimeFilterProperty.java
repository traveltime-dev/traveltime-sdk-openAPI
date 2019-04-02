package org.openapitools.server.api.model;

import java.util.Objects;

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

  @JsonValue
  public String getValue() {
    return value;
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