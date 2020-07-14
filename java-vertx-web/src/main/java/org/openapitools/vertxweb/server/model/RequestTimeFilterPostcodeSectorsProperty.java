package org.openapitools.vertxweb.server.model;

import java.util.Objects;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;

/**
 * Gets or Sets RequestTimeFilterPostcodeSectorsProperty
 */
public enum RequestTimeFilterPostcodeSectorsProperty {
  
  TRAVEL_TIME_REACHABLE("travel_time_reachable"),
  
  TRAVEL_TIME_ALL("travel_time_all"),
  
  COVERAGE("coverage");

  private String value;

  RequestTimeFilterPostcodeSectorsProperty(String value) {
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

  public static RequestTimeFilterPostcodeSectorsProperty fromValue(String value) {
    for (RequestTimeFilterPostcodeSectorsProperty b : RequestTimeFilterPostcodeSectorsProperty.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }
}